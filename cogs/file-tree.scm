(require-builtin helix/core/typable as helix.)
(require-builtin helix/core/static as helix.static.)
(require-builtin helix/core/editor)

(require "steel/sorting/merge-sort.scm")

(provide fold-directory
         fold-directory-or-open
         unfold-all-one-level
         open-file-from-picker
         create-file
         create-directory
         fold-all
         FILE-TREE
         FILE-TREE-KEYBINDINGS
         create-file-tree
         file-tree-set-side!)

;; labelled buffers ->
(require (only-in "labelled-buffers.scm"
                  make-new-labelled-buffer!
                  temporarily-switch-focus
                  open-or-switch-focus
                  currently-in-labelled-buffer?
                  open-labelled-buffer
                  maybe-fetch-doc-id
                  fetch-doc-id))

;; TODO: This should be moved to a shared module somewhere, once the component API is cleaned up
(define (helix-prompt! cx prompt-str thunk)
  (push-component! cx (Prompt::new prompt-str thunk)))

;; TODO: Prefix function names to keep them separate
;; File Tree keybindings
(define FILE-TREE-KEYBINDINGS
  (hash "normal"
        (hash "i" 'no_op
              "v" 'no_op
              "|" 'no_op
              "!" 'no_op
              "A-!" 'no_op
              "$" 'no_op
              "C-a" 'no_op
              "C-x" 'no_op
              "a" 'no_op
              "I" 'no_op
              "o" 'no_op
              "O" 'no_op
              "d" 'no_op
              "J" 'no_op
              "A-d" 'no_op
              "tab" ':fold-directory
              "ret" ':fold-directory-or-open
              "E" ':unfold-all-one-level
              "o" ':open-file-from-picker
              "n" (hash "f" ':create-file 
                        "d" ':create-directory)
              "F" ':fold-all)))

;; This needs to be globally unique
; (define FILE-TREE "github.com/mattwparas/helix-config/file-tree")
(define FILE-TREE "explorer-file-tree")

(define file-tree-open-to-side 'left)

;; TODO: This should probably be a contract
(define (file-tree-set-side! side)
  (unless (or (equal? side 'left) (equal? side 'right))
    (error! "file-tree-set-side! requires either the 'left or 'right"))
  (set! file-tree-open-to-side side))

(define *file-tree* '())
(define *directories* (hash))
(define *ignore-set* (hashset "target" ".git"))

(define (fold! directory)
  (set! *directories* (hash-insert *directories* directory #t)))

(define (unfold! directory)
  (set! *directories* (hash-insert *directories* directory #f)))

(define (flatten x)
  (cond
    [(null? x) '()]
    [(not (list? x)) (list x)]
    [else (append (flatten (car x)) (flatten (cdr x)))]))

(define (format-dir path)
  (if (hash-contains? *directories* path)
      (if (hash-try-get *directories* path) " " " ")
      " " ;; First time we're visiting, mark as closed
      ))

(define *extension-map* (hash "rs" " " 
                              "scm" "󰘧 "
                              "go" " "
                              "c" ""  
                              "c++" ""  
                              "conf" " "
                              "gd" " "
                              "godot" " "
                              "html" " "
                              "js" " "
                              "json" " "
                              "lua" " "
                              "lock" " "
                              "meta" " "
                              "makefile" " "
                              "markdown" " "
                              "nix" " "
                              "py" " "
                              "php" " "
                              "png" " "
                              "po" "󰗊 "
                              "pot" "󰗊 "
                              "svelte" " "
                              "svg" "󰜡 "
                              "toml" " "
                              "tscn" " "
                              "ts" " "
                              "tsx" " "
                              "txt" " "
                              "v" " "
                              "vim" " "
                              "vue" " "
                              "xml" "󰗀 "
                              "yaml" " "
                              "yml" " "
                              ))

(define (path->symbol path)
  (let ([extension (path->extension path)])
    (if extension
        (begin
          (define lookup (hash-try-get *extension-map* (path->extension path)))
          (if lookup lookup " "))

        " ")))

;; Simple tree implementation
;; Walks the file structure and prints without much fancy formatting
;; Returns a list of the visited files for convenience
(define (tree p writer-thunk)
  (define (tree-rec path padding)
    (define name (file-name path))

    (if (hashset-contains? *ignore-set* name)
        '()
        (begin
          (writer-thunk
           (string-append padding (if (is-dir? path) (format-dir path) (path->symbol path)) name))
          (cond
            [(is-file? path) path]
            [(is-dir? path)
             ;; If we're not supposed to see this path (i.e. its been folded),
             ;; then we're going to ignore it
             ;; Also - if it doesn't exist in the set, default it to folded
             (if (not (hash-contains? *directories* path))
                 (begin
                   (set! *directories* (hash-insert *directories* path #t))
                   (list path))
                 (if (hash-try-get *directories* path)
                     (list path)

                     (cons path
                           (map (fn (x) (tree-rec x (string-append padding "    ")))
                                (merge-sort (read-dir path))))))]
            [else void]))))
  (flatten (tree-rec p "")))

;;@doc
;; Open the currently selected line
(define (open-file-from-picker cx)
  (when (currently-in-labelled-buffer? cx FILE-TREE)
    (define file-to-open (list-ref *file-tree* (helix.static.get-current-line-number cx)))
    (helix.open cx (list file-to-open) helix.PromptEvent::Validate)))

;; Initialize all roots to be flat so that we don't blow things up, recursion only goes in to things
;; that are expanded
;;@doc
;; open file tree
(define (create-file-tree cx)

  ;; The doc id, or #false if it is not in the map
  (define doc-id (maybe-fetch-doc-id FILE-TREE))

  (unless doc-id
    (make-new-labelled-buffer! cx #:label FILE-TREE #:side file-tree-open-to-side))

  (unless (~> cx (cx-editor!) (editor-doc-exists? (fetch-doc-id FILE-TREE)))
    (make-new-labelled-buffer! cx #:label FILE-TREE #:side file-tree-open-to-side))

  (temporarily-switch-focus
   cx
   (lambda (cx)
     (open-labelled-buffer cx FILE-TREE)

     ;; Open depending on the setting
     (cond
       [(equal? file-tree-open-to-side 'left) (helix.static.move-window-far-left cx)]
       [(equal? file-tree-open-to-side 'right) (helix.static.move-window-far-right cx)]
       [else void])

     ;;
     (helix.static.move-window-far-left cx)

     (helix.static.select_all cx)
     (helix.static.delete_selection cx)

     ;; Update the current file tree value
     (set! *file-tree*
           (tree (helix-find-workspace)
                 (lambda (str)
                   (helix.static.insert_string cx str)
                   (helix.static.open_below cx)
                   (helix.static.goto_line_start cx)))))))

;;@doc
;; Fold the directory that we're currently hovering over
(define (fold-directory cx)
  (when (currently-in-labelled-buffer? cx FILE-TREE)
    (define directory-to-fold (list-ref *file-tree* (helix.static.get-current-line-number cx)))
    (when (is-dir? directory-to-fold)
      (begin
        ;; If its already folded, unfold it
        (if (hash-try-get *directories* directory-to-fold)
            (unfold! directory-to-fold)
            (fold! directory-to-fold))

        (update-file-tree cx)))))


;;@doc
;; 折叠文件夹或者打开文件
(define (fold-directory-or-open cx)
  (when (currently-in-labelled-buffer? cx FILE-TREE)
    (define entry_path (list-ref *file-tree* (helix.static.get-current-line-number cx)))
    (when (is-dir? entry_path)
      (begin
        (if (hash-try-get *directories* entry_path)
            (unfold! entry_path)
            (fold! entry_path))
        (update-file-tree cx)))
    (when (is-file? entry_path)
      (helix.open cx (list entry_path) helix.PromptEvent::Validate))
    ))

;;@doc
;; Create a file under wherever we are
(define (create-file cx)
  (when (currently-in-labelled-buffer? cx FILE-TREE)
    (define currently-selected (list-ref *file-tree* (helix.static.get-current-line-number cx)))
    (define prompt
      (if (is-dir? currently-selected)
          (string-append "New file: " currently-selected "/")
          (string-append "New file: "
                         (trim-end-matches currently-selected (file-name currently-selected)))))

    (helix-prompt!
     cx
     prompt
     (lambda (cx result)
       (define file-name (string-append (trim-start-matches prompt "New file: ") result))
       (temporarily-switch-focus cx
                                 (lambda (cx)
                                   (helix.vsplit-new cx '() helix.PromptEvent::Validate)
                                   (helix.open cx (list file-name) helix.PromptEvent::Validate)
                                   (helix.write cx (list file-name) helix.PromptEvent::Validate)
                                   (helix.quit cx '() helix.PromptEvent::Validate)))

       ;; TODO:
       ;; This is happening before the write is finished, so its not working. We will have to manually insert
       ;; the new file into the right spot in the tree, which would require rewriting this to have a proper sorted
       ;; tree representation in memory, which we don't yet have. For now, we can just do this I guess
       (enqueue-thread-local-callback cx refresh-file-tree)))))

(define (update-file-tree cx)

  (define current-selection (helix.static.current-selection-object cx))
  (define last-mode (~> cx (cx-editor!) (editor-mode)))

  (helix.static.select_all cx)
  (helix.static.delete_selection cx)

  ;; Update the current file tree value
  (set! *file-tree*
        (tree (helix-find-workspace)
              (lambda (str)
                (helix.static.insert_string cx str)
                (helix.static.open_below cx)
                (helix.static.goto_line_start cx))))

  ;; Set it BACK to where we were previously!
  (helix.static.set-current-selection-object! cx current-selection)

  (editor-set-mode! (cx-editor! cx) last-mode))

(define (refresh-file-tree cx)
  (temporarily-switch-focus cx
                            (lambda (cx)
                              (open-labelled-buffer cx FILE-TREE)
                              (update-file-tree cx))))

;;@doc
;; Create a new directory
(define (create-directory cx)
  (when (currently-in-labelled-buffer? cx FILE-TREE)
    (define currently-selected (list-ref *file-tree* (helix.static.get-current-line-number cx)))
    (define prompt
      (if (is-dir? currently-selected)
          (string-append "New directory: " currently-selected "/")
          (string-append "New directory: "
                         (trim-end-matches currently-selected (file-name currently-selected)))))

    (helix-prompt! cx
                   prompt
                   (lambda (cx result)
                     (define directory-name
                       (string-append (trim-start-matches prompt "New directory: ") result))
                     (hx.create-directory directory-name)
                     (enqueue-thread-local-callback cx refresh-file-tree)))))

;;@doc
;; Fold all of the directories
(define (fold-all cx)
  (when (currently-in-labelled-buffer? cx FILE-TREE)

    (set! *directories*
          (transduce *directories* (mapping (lambda (x) (list (list-ref x 0) #t))) (into-hashmap)))

    (helix.static.goto_file_start cx)

    (refresh-file-tree cx)))

;;@doc
;; Unfold all of the currently open directories one level.
(define (unfold-all-one-level cx)
  (when (currently-in-labelled-buffer? cx FILE-TREE)

    (set! *directories*
          (transduce *directories* (mapping (lambda (x) (list (list-ref x 0) #f))) (into-hashmap)))

    (refresh-file-tree cx)))
