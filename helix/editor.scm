(require-builtin helix/core/editor as helix.)
(provide Action/Load)
(define (Action/Load)
    (helix.Action/Load))

(provide Action/Replace)
(define (Action/Replace)
    (helix.Action/Replace))

(provide Action/HorizontalSplit)
(define (Action/HorizontalSplit)
    (helix.Action/HorizontalSplit))

(provide Action/VerticalSplit)
(define (Action/VerticalSplit)
    (helix.Action/VerticalSplit))

(provide editor-focus)
(define (editor-focus)
    (helix.editor-focus *helix.cx*))

(provide editor-mode)
(define (editor-mode)
    (helix.editor-mode *helix.cx*))

(provide cx->themes)
(define (cx->themes)
    (helix.cx->themes *helix.cx*))

(provide editor-all-documents)
(define (editor-all-documents)
    (helix.editor-all-documents *helix.cx*))

(provide cx->cursor)
(define (cx->cursor)
    (helix.cx->cursor *helix.cx*))

(provide editor->doc-id)
(define (editor->doc-id arg)
    (helix.editor->doc-id *helix.cx* arg))

(provide editor-switch!)
(define (editor-switch! arg)
    (helix.editor-switch! *helix.cx* arg))

(provide editor-set-focus!)
(define (editor-set-focus! arg)
    (helix.editor-set-focus! *helix.cx* arg))

(provide editor-set-mode!)
(define (editor-set-mode! arg)
    (helix.editor-set-mode! *helix.cx* arg))

(provide editor-doc-in-view?)
(define (editor-doc-in-view? arg)
    (helix.editor-doc-in-view? *helix.cx* arg))

(provide set-scratch-buffer-name!)
(define (set-scratch-buffer-name! arg)
    (helix.set-scratch-buffer-name! *helix.cx* arg))

(provide editor-doc-exists?)
(define (editor-doc-exists? arg)
    (helix.editor-doc-exists? *helix.cx* arg))

(provide editor->get-document)
(define (editor->get-document arg)
    (helix.editor->get-document *helix.cx* arg))

(provide editor-switch-action!)
(define (editor-switch-action! arg1 arg2)
    (helix.editor-switch-action! *helix.cx* arg1 arg2))
