(require-builtin helix/core/static as helix.static.)
(require-builtin helix/core/typable as helix.)

(require "cogs/keymaps.scm")
(require (only-in "cogs/options.scm" apply-options))
(require (only-in "cogs/file-tree.scm" FILE-TREE-KEYBINDINGS FILE-TREE))



;; ==== keybindings

(add-global-keybinding 
  (hash 
        ; "insert" (hash "C-r" (hash "f" ":dummy")) 
        "normal" (hash "C-r" (hash  "e" ':create-file-tree
                                    "s" ':git-status 
                                    "r" ':reload ))
  ))
(define scm-keybindings (hash "insert" (hash "ret" ':scheme-indent 
                                             "C-l" ':insert-lambda)))

;; Grab whatever the existing keybinding map is
(define standard-keybindings (deep-copy-global-keybindings))
(define file-tree-base (deep-copy-global-keybindings))

(merge-keybindings standard-keybindings scm-keybindings)
(merge-keybindings file-tree-base FILE-TREE-KEYBINDINGS)

(set-global-buffer-or-extension-keymap (hash 
                                       "scm" standard-keybindings 
                                       FILE-TREE file-tree-base))

;; ==== options
