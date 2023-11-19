;; https://github.com/mattwparas/steel
;;
(require-builtin helix/core/typable as helix.)
(require-builtin helix/core/static as helix.static.)
(require-builtin helix/core/editor)

;; ========= File Tree 
(require "cogs/file-tree.scm")

(provide fold-directory
         fold-directory-or-open
         unfold-all-one-level
         open-file-from-picker
         create-file-tree
         create-file
         create-directory
         fold-all
         FILE-TREE
         FILE-TREE-KEYBINDINGS)

;; =====  scheme indent
(require (only-in "cogs/scheme-indent.scm" scheme-indent))
(provide scheme-indent)

;; ====== commands

(provide
  git-status
  git-add
  move-window-left
  move-window-right
  shell
  current-focus
  insert-string-at-selection
  insert-lambda
  )


;;@doc
;; git status picker
(define (git-status cx)
  (helix.run-shell-command cx '("git" "status") helix.PromptEvent::Validate))

;;@doc
; Add the current file to git
(define (git-add cx)
  (shell cx "git" "add" "%"))

;;@doc
; 向左移动宽口 <C-w><H>
(define (move-window-left cx)
  (helix.static.move-window-far-left cx))

;;@doc
; 向右移动宽口 <C-w><L>
(define (move-window-right cx)
  (helix.static.move-window-far-right cx))

;;@doc
;; Specialized shell - also be able to override the existing definition, if possible.
(define (shell cx . args)
  ;; Replace the % with the current file
  (define expanded (map (lambda (x) (if (equal? x "%") (current-path cx) x)) args))
  (helix.run-shell-command cx expanded helix.PromptEvent::Validate))

;;@doc
;; Get the path of the currently focused file
(define (current-focus cx)
  (insert-string-at-selection cx (to-string (current-path cx))))

;; Only get the doc if it exists - also use real options instead of false here cause it kinda sucks
(define (editor-get-doc-if-exists editor doc-id)
  (if (editor-doc-exists? editor doc-id) (editor->get-document editor doc-id) #f))

; @doc
; get current path 
(define (current-path cx)
  (let* ([editor (cx-editor! cx)]
         [focus (editor-focus editor)]
         [focus-doc-id (editor->doc-id editor focus)]
         [document (editor-get-doc-if-exists editor focus-doc-id)])

    (if document (Document-path document) #f)))


;; Last focused - will allow us to swap between the last view we were at
(define *last-focus* 'uninitialized)

;; Mark the last focused document, so that we can return to it
(define (mark-last-focused! cx)
  (let* ([editor (cx-editor! cx)] [focus (editor-focus editor)])
    (set! *last-focus* focus)
    focus))

(define (currently-focused cx)
  (~> cx (cx-editor!) (editor-focus)))

;; Grab whatever we're currently focused on
(define (get-current-focus cx)
  (~> cx (cx-editor!) (editor-focus)))

;; Get the current document id
(define (get-current-doc-id cx)
  (let* ([editor (cx-editor! cx)] [focus (editor-focus editor)]) (editor->doc-id editor focus)))

;;@doc
;; Insert a lambda
(define (insert-lambda cx)
  (helix.static.insert_char cx #\λ)
  (helix.static.insert_mode cx))

;;@doc
;; Insert the string at the selection and go back into insert mode
(define (insert-string-at-selection cx str)
  (helix.static.insert_string cx str)
  (helix.static.insert_mode cx))


