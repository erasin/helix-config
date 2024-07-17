(require-builtin helix/core/typable as helix.)
(provide quit)

;;@doc
;;Close the current view.
(define (quit . args)
    (helix.quit *helix.cx* args))

(provide quit!)

;;@doc
;;Force close the current view, ignoring unsaved changes.
(define (quit! . args)
    (helix.quit! *helix.cx* args))

(provide open)

;;@doc
;;Open a file from disk into the current view.
(define (open . args)
    (helix.open *helix.cx* args))

(provide buffer-close)

;;@doc
;;Close the current buffer.
(define (buffer-close . args)
    (helix.buffer-close *helix.cx* args))

(provide buffer-close!)

;;@doc
;;Close the current buffer forcefully, ignoring unsaved changes.
(define (buffer-close! . args)
    (helix.buffer-close! *helix.cx* args))

(provide buffer-close-others)

;;@doc
;;Close all buffers but the currently focused one.
(define (buffer-close-others . args)
    (helix.buffer-close-others *helix.cx* args))

(provide buffer-close-others!)

;;@doc
;;Force close all buffers but the currently focused one.
(define (buffer-close-others! . args)
    (helix.buffer-close-others! *helix.cx* args))

(provide buffer-close-all)

;;@doc
;;Close all buffers without quitting.
(define (buffer-close-all . args)
    (helix.buffer-close-all *helix.cx* args))

(provide buffer-close-all!)

;;@doc
;;Force close all buffers ignoring unsaved changes without quitting.
(define (buffer-close-all! . args)
    (helix.buffer-close-all! *helix.cx* args))

(provide buffer-next)

;;@doc
;;Goto next buffer.
(define (buffer-next . args)
    (helix.buffer-next *helix.cx* args))

(provide buffer-previous)

;;@doc
;;Goto previous buffer.
(define (buffer-previous . args)
    (helix.buffer-previous *helix.cx* args))

(provide write)

;;@doc
;;Write changes to disk. Accepts an optional path (:write some/path.txt)
(define (write . args)
    (helix.write *helix.cx* args))

(provide write!)

;;@doc
;;Force write changes to disk creating necessary subdirectories. Accepts an optional path (:write! some/path.txt)
(define (write! . args)
    (helix.write! *helix.cx* args))

(provide write-buffer-close)

;;@doc
;;Write changes to disk and closes the buffer. Accepts an optional path (:write-buffer-close some/path.txt)
(define (write-buffer-close . args)
    (helix.write-buffer-close *helix.cx* args))

(provide write-buffer-close!)

;;@doc
;;Force write changes to disk creating necessary subdirectories and closes the buffer. Accepts an optional path (:write-buffer-close! some/path.txt)
(define (write-buffer-close! . args)
    (helix.write-buffer-close! *helix.cx* args))

(provide new)

;;@doc
;;Create a new scratch buffer.
(define (new . args)
    (helix.new *helix.cx* args))

(provide format)

;;@doc
;;Format the file using the LSP formatter.
(define (format . args)
    (helix.format *helix.cx* args))

(provide indent-style)

;;@doc
;;Set the indentation style for editing. ('t' for tabs or 1-16 for number of spaces.)
(define (indent-style . args)
    (helix.indent-style *helix.cx* args))

(provide line-ending)

;;@doc
;;Set the document's default line ending. Options: crlf, lf.
(define (line-ending . args)
    (helix.line-ending *helix.cx* args))

(provide earlier)

;;@doc
;;Jump back to an earlier point in edit history. Accepts a number of steps or a time span.
(define (earlier . args)
    (helix.earlier *helix.cx* args))

(provide later)

;;@doc
;;Jump to a later point in edit history. Accepts a number of steps or a time span.
(define (later . args)
    (helix.later *helix.cx* args))

(provide write-quit)

;;@doc
;;Write changes to disk and close the current view. Accepts an optional path (:wq some/path.txt)
(define (write-quit . args)
    (helix.write-quit *helix.cx* args))

(provide write-quit!)

;;@doc
;;Write changes to disk and close the current view forcefully. Accepts an optional path (:wq! some/path.txt)
(define (write-quit! . args)
    (helix.write-quit! *helix.cx* args))

(provide write-all)

;;@doc
;;Write changes from all buffers to disk.
(define (write-all . args)
    (helix.write-all *helix.cx* args))

(provide write-all!)

;;@doc
;;Forcefully write changes from all buffers to disk creating necessary subdirectories.
(define (write-all! . args)
    (helix.write-all! *helix.cx* args))

(provide write-quit-all)

;;@doc
;;Write changes from all buffers to disk and close all views.
(define (write-quit-all . args)
    (helix.write-quit-all *helix.cx* args))

(provide write-quit-all!)

;;@doc
;;Write changes from all buffers to disk and close all views forcefully (ignoring unsaved changes).
(define (write-quit-all! . args)
    (helix.write-quit-all! *helix.cx* args))

(provide quit-all)

;;@doc
;;Close all views.
(define (quit-all . args)
    (helix.quit-all *helix.cx* args))

(provide quit-all!)

;;@doc
;;Force close all views ignoring unsaved changes.
(define (quit-all! . args)
    (helix.quit-all! *helix.cx* args))

(provide cquit)

;;@doc
;;Quit with exit code (default 1). Accepts an optional integer exit code (:cq 2).
(define (cquit . args)
    (helix.cquit *helix.cx* args))

(provide cquit!)

;;@doc
;;Force quit with exit code (default 1) ignoring unsaved changes. Accepts an optional integer exit code (:cq! 2).
(define (cquit! . args)
    (helix.cquit! *helix.cx* args))

(provide theme)

;;@doc
;;Change the editor theme (show current theme if no name specified).
(define (theme . args)
    (helix.theme *helix.cx* args))

(provide yank-join)

;;@doc
;;Yank joined selections. A separator can be provided as first argument. Default value is newline.
(define (yank-join . args)
    (helix.yank-join *helix.cx* args))

(provide clipboard-yank)

;;@doc
;;Yank main selection into system clipboard.
(define (clipboard-yank . args)
    (helix.clipboard-yank *helix.cx* args))

(provide clipboard-yank-join)

;;@doc
;;Yank joined selections into system clipboard. A separator can be provided as first argument. Default value is newline.
(define (clipboard-yank-join . args)
    (helix.clipboard-yank-join *helix.cx* args))

(provide primary-clipboard-yank)

;;@doc
;;Yank main selection into system primary clipboard.
(define (primary-clipboard-yank . args)
    (helix.primary-clipboard-yank *helix.cx* args))

(provide primary-clipboard-yank-join)

;;@doc
;;Yank joined selections into system primary clipboard. A separator can be provided as first argument. Default value is newline.
(define (primary-clipboard-yank-join . args)
    (helix.primary-clipboard-yank-join *helix.cx* args))

(provide clipboard-paste-after)

;;@doc
;;Paste system clipboard after selections.
(define (clipboard-paste-after . args)
    (helix.clipboard-paste-after *helix.cx* args))

(provide clipboard-paste-before)

;;@doc
;;Paste system clipboard before selections.
(define (clipboard-paste-before . args)
    (helix.clipboard-paste-before *helix.cx* args))

(provide clipboard-paste-replace)

;;@doc
;;Replace selections with content of system clipboard.
(define (clipboard-paste-replace . args)
    (helix.clipboard-paste-replace *helix.cx* args))

(provide primary-clipboard-paste-after)

;;@doc
;;Paste primary clipboard after selections.
(define (primary-clipboard-paste-after . args)
    (helix.primary-clipboard-paste-after *helix.cx* args))

(provide primary-clipboard-paste-before)

;;@doc
;;Paste primary clipboard before selections.
(define (primary-clipboard-paste-before . args)
    (helix.primary-clipboard-paste-before *helix.cx* args))

(provide primary-clipboard-paste-replace)

;;@doc
;;Replace selections with content of system primary clipboard.
(define (primary-clipboard-paste-replace . args)
    (helix.primary-clipboard-paste-replace *helix.cx* args))

(provide show-clipboard-provider)

;;@doc
;;Show clipboard provider name in status bar.
(define (show-clipboard-provider . args)
    (helix.show-clipboard-provider *helix.cx* args))

(provide change-current-directory)

;;@doc
;;Change the current working directory.
(define (change-current-directory . args)
    (helix.change-current-directory *helix.cx* args))

(provide show-directory)

;;@doc
;;Show the current working directory.
(define (show-directory . args)
    (helix.show-directory *helix.cx* args))

(provide encoding)

;;@doc
;;Set encoding. Based on `https://encoding.spec.whatwg.org`.
(define (encoding . args)
    (helix.encoding *helix.cx* args))

(provide character-info)

;;@doc
;;Get info about the character under the primary cursor.
(define (character-info . args)
    (helix.character-info *helix.cx* args))

(provide reload)

;;@doc
;;Discard changes and reload from the source file.
(define (reload . args)
    (helix.reload *helix.cx* args))

(provide reload-all)

;;@doc
;;Discard changes and reload all documents from the source files.
(define (reload-all . args)
    (helix.reload-all *helix.cx* args))

(provide update)

;;@doc
;;Write changes only if the file has been modified.
(define (update . args)
    (helix.update *helix.cx* args))

(provide lsp-workspace-command)

;;@doc
;;Open workspace command picker
(define (lsp-workspace-command . args)
    (helix.lsp-workspace-command *helix.cx* args))

(provide lsp-restart)

;;@doc
;;Restarts the language servers used by the current doc
(define (lsp-restart . args)
    (helix.lsp-restart *helix.cx* args))

(provide lsp-stop)

;;@doc
;;Stops the language servers that are used by the current doc
(define (lsp-stop . args)
    (helix.lsp-stop *helix.cx* args))

(provide tree-sitter-scopes)

;;@doc
;;Display tree sitter scopes, primarily for theming and development.
(define (tree-sitter-scopes . args)
    (helix.tree-sitter-scopes *helix.cx* args))

(provide tree-sitter-highlight-name)

;;@doc
;;Display name of tree-sitter highlight scope under the cursor.
(define (tree-sitter-highlight-name . args)
    (helix.tree-sitter-highlight-name *helix.cx* args))

(provide debug-start)

;;@doc
;;Start a debug session from a given template with given parameters.
(define (debug-start . args)
    (helix.debug-start *helix.cx* args))

(provide debug-remote)

;;@doc
;;Connect to a debug adapter by TCP address and start a debugging session from a given template with given parameters.
(define (debug-remote . args)
    (helix.debug-remote *helix.cx* args))

(provide debug-eval)

;;@doc
;;Evaluate expression in current debug context.
(define (debug-eval . args)
    (helix.debug-eval *helix.cx* args))

(provide vsplit)

;;@doc
;;Open the file in a vertical split.
(define (vsplit . args)
    (helix.vsplit *helix.cx* args))

(provide vsplit-new)

;;@doc
;;Open a scratch buffer in a vertical split.
(define (vsplit-new . args)
    (helix.vsplit-new *helix.cx* args))

(provide hsplit)

;;@doc
;;Open the file in a horizontal split.
(define (hsplit . args)
    (helix.hsplit *helix.cx* args))

(provide hsplit-new)

;;@doc
;;Open a scratch buffer in a horizontal split.
(define (hsplit-new . args)
    (helix.hsplit-new *helix.cx* args))

(provide tutor)

;;@doc
;;Open the tutorial.
(define (tutor . args)
    (helix.tutor *helix.cx* args))

(provide goto)

;;@doc
;;Goto line number.
(define (goto . args)
    (helix.goto *helix.cx* args))

(provide set-language)

;;@doc
;;Set the language of current buffer (show current language if no value specified).
(define (set-language . args)
    (helix.set-language *helix.cx* args))

(provide set-option)

;;@doc
;;Set a config option at runtime.
;;For example to disable smart case search, use `:set search.smart-case false`.
(define (set-option . args)
    (helix.set-option *helix.cx* args))

(provide toggle-option)

;;@doc
;;Toggle a boolean config option at runtime.
;;For example to toggle smart case search, use `:toggle search.smart-case`.
(define (toggle-option . args)
    (helix.toggle-option *helix.cx* args))

(provide get-option)

;;@doc
;;Get the current value of a config option.
(define (get-option . args)
    (helix.get-option *helix.cx* args))

(provide sort)

;;@doc
;;Sort ranges in selection.
(define (sort . args)
    (helix.sort *helix.cx* args))

(provide rsort)

;;@doc
;;Sort ranges in selection in reverse order.
(define (rsort . args)
    (helix.rsort *helix.cx* args))

(provide reflow)

;;@doc
;;Hard-wrap the current selection of lines to a given width.
(define (reflow . args)
    (helix.reflow *helix.cx* args))

(provide tree-sitter-subtree)

;;@doc
;;Display tree sitter subtree under cursor, primarily for debugging queries.
(define (tree-sitter-subtree . args)
    (helix.tree-sitter-subtree *helix.cx* args))

(provide config-reload)

;;@doc
;;Refresh user config.
(define (config-reload . args)
    (helix.config-reload *helix.cx* args))

(provide config-open)

;;@doc
;;Open the user config.toml file.
(define (config-open . args)
    (helix.config-open *helix.cx* args))

(provide config-open-workspace)

;;@doc
;;Open the workspace config.toml file.
(define (config-open-workspace . args)
    (helix.config-open-workspace *helix.cx* args))

(provide log-open)

;;@doc
;;Open the helix log file.
(define (log-open . args)
    (helix.log-open *helix.cx* args))

(provide insert-output)

;;@doc
;;Run shell command, inserting output before each selection.
(define (insert-output . args)
    (helix.insert-output *helix.cx* args))

(provide append-output)

;;@doc
;;Run shell command, appending output after each selection.
(define (append-output . args)
    (helix.append-output *helix.cx* args))

(provide pipe)

;;@doc
;;Pipe each selection to the shell command.
(define (pipe . args)
    (helix.pipe *helix.cx* args))

(provide pipe-to)

;;@doc
;;Pipe each selection to the shell command, ignoring output.
(define (pipe-to . args)
    (helix.pipe-to *helix.cx* args))

(provide run-shell-command)

;;@doc
;;Run a shell command
(define (run-shell-command . args)
    (helix.run-shell-command *helix.cx* args))

(provide run-shell-command-text)

;;@doc
;;Run a shell command
(define (run-shell-command-text . args)
    (helix.run-shell-command-text *helix.cx* args))

(provide reset-diff-change)

;;@doc
;;Reset the diff change at the cursor position.
(define (reset-diff-change . args)
    (helix.reset-diff-change *helix.cx* args))

(provide clear-register)

;;@doc
;;Clear given register. If no argument is provided, clear all registers.
(define (clear-register . args)
    (helix.clear-register *helix.cx* args))

(provide redraw)

;;@doc
;;Clear and re-render the whole UI
(define (redraw . args)
    (helix.redraw *helix.cx* args))

(provide move)

;;@doc
;;Move the current buffer and its corresponding file to a different path
(define (move . args)
    (helix.move *helix.cx* args))

(provide yank-diagnostic)

;;@doc
;;Yank diagnostic(s) under primary cursor to register, or clipboard by default
(define (yank-diagnostic . args)
    (helix.yank-diagnostic *helix.cx* args))

(provide read)

;;@doc
;;Load a file into buffer
(define (read . args)
    (helix.read *helix.cx* args))
