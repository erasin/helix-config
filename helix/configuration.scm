(require-builtin helix/core/configuration as helix.)
(provide update-configuration!)
(define (update-configuration!)
    (helix.update-configuration! *helix.config*))

(provide get-keybindings)
(define (get-keybindings)
    (helix.get-keybindings *helix.config*))

(provide sw-enable)
(define (sw-enable arg)
    (lambda (picker) 
            (helix.sw-enable picker arg)
            picker))

(provide sw-max-wrap)
(define (sw-max-wrap arg)
    (lambda (picker) 
            (helix.sw-max-wrap picker arg)
            picker))

(provide sw-max-indent-retain)
(define (sw-max-indent-retain arg)
    (lambda (picker) 
            (helix.sw-max-indent-retain picker arg)
            picker))

(provide sw-wrap-indicator)
(define (sw-wrap-indicator arg)
    (lambda (picker) 
            (helix.sw-wrap-indicator picker arg)
            picker))

(provide sw-wrap-at-text-width)
(define (sw-wrap-at-text-width arg)
    (lambda (picker) 
            (helix.sw-wrap-at-text-width picker arg)
            picker))

(provide fp-hidden)
(define (fp-hidden arg)
    (lambda (picker) 
            (helix.fp-hidden picker arg)
            picker))

(provide fp-follow-symlinks)
(define (fp-follow-symlinks arg)
    (lambda (picker) 
            (helix.fp-follow-symlinks picker arg)
            picker))

(provide fp-deduplicate-links)
(define (fp-deduplicate-links arg)
    (lambda (picker) 
            (helix.fp-deduplicate-links picker arg)
            picker))

(provide fp-parents)
(define (fp-parents arg)
    (lambda (picker) 
            (helix.fp-parents picker arg)
            picker))

(provide fp-ignore)
(define (fp-ignore arg)
    (lambda (picker) 
            (helix.fp-ignore picker arg)
            picker))

(provide fp-git-ignore)
(define (fp-git-ignore arg)
    (lambda (picker) 
            (helix.fp-git-ignore picker arg)
            picker))

(provide fp-git-global)
(define (fp-git-global arg)
    (lambda (picker) 
            (helix.fp-git-global picker arg)
            picker))

(provide fp-git-exclude)
(define (fp-git-exclude arg)
    (lambda (picker) 
            (helix.fp-git-exclude picker arg)
            picker))

(provide fp-max-depth)
(define (fp-max-depth arg)
    (lambda (picker) 
            (helix.fp-max-depth picker arg)
            picker))

(provide file-picker)
(define (file-picker . args)
    (helix.register-file-picker
        *helix.config*
        (foldl (lambda (func config) (func config)) (helix.raw-file-picker) args)))

(provide soft-wrap)
(define (soft-wrap . args)
    (helix.register-soft-wrap
        *helix.config*
        (foldl (lambda (func config) (func config)) (helix.raw-soft-wrap) args)))

(provide scrolloff)
(define (scrolloff arg)
    (helix.scrolloff *helix.config* arg))

(provide scroll_lines)
(define (scroll_lines arg)
    (helix.scroll_lines *helix.config* arg))

(provide mouse)
(define (mouse arg)
    (helix.mouse *helix.config* arg))

(provide shell)
(define (shell arg)
    (helix.shell *helix.config* arg))

(provide line-number)
(define (line-number arg)
    (helix.line-number *helix.config* arg))

(provide cursorline)
(define (cursorline arg)
    (helix.cursorline *helix.config* arg))

(provide cursorcolumn)
(define (cursorcolumn arg)
    (helix.cursorcolumn *helix.config* arg))

(provide middle-click-paste)
(define (middle-click-paste arg)
    (helix.middle-click-paste *helix.config* arg))

(provide auto-pairs)
(define (auto-pairs arg)
    (helix.auto-pairs *helix.config* arg))

(provide auto-completion)
(define (auto-completion arg)
    (helix.auto-completion *helix.config* arg))

(provide auto-format)
(define (auto-format arg)
    (helix.auto-format *helix.config* arg))

(provide auto-save)
(define (auto-save arg)
    (helix.auto-save *helix.config* arg))

(provide text-width)
(define (text-width arg)
    (helix.text-width *helix.config* arg))

(provide idle-timeout)
(define (idle-timeout arg)
    (helix.idle-timeout *helix.config* arg))

(provide completion-timeout)
(define (completion-timeout arg)
    (helix.completion-timeout *helix.config* arg))

(provide preview-completion-insert)
(define (preview-completion-insert arg)
    (helix.preview-completion-insert *helix.config* arg))

(provide completion-trigger-len)
(define (completion-trigger-len arg)
    (helix.completion-trigger-len *helix.config* arg))

(provide completion-replace)
(define (completion-replace arg)
    (helix.completion-replace *helix.config* arg))

(provide auto-info)
(define (auto-info arg)
    (helix.auto-info *helix.config* arg))

(provide cursor-shape)
(define (cursor-shape arg)
    (helix.cursor-shape *helix.config* arg))

(provide true-color)
(define (true-color arg)
    (helix.true-color *helix.config* arg))

(provide insert-final-newline)
(define (insert-final-newline arg)
    (helix.insert-final-newline *helix.config* arg))

(provide color-modes)
(define (color-modes arg)
    (helix.color-modes *helix.config* arg))

(provide gutters)
(define (gutters arg)
    (helix.gutters *helix.config* arg))

(provide statusline)
(define (statusline arg)
    (helix.statusline *helix.config* arg))

(provide undercurl)
(define (undercurl arg)
    (helix.undercurl *helix.config* arg))

(provide search)
(define (search arg)
    (helix.search *helix.config* arg))

(provide lsp)
(define (lsp arg)
    (helix.lsp *helix.config* arg))

(provide terminal)
(define (terminal arg)
    (helix.terminal *helix.config* arg))

(provide rulers)
(define (rulers arg)
    (helix.rulers *helix.config* arg))

(provide whitespace)
(define (whitespace arg)
    (helix.whitespace *helix.config* arg))

(provide bufferline)
(define (bufferline arg)
    (helix.bufferline *helix.config* arg))

(provide indent-guides)
(define (indent-guides arg)
    (helix.indent-guides *helix.config* arg))

(provide workspace-lsp-roots)
(define (workspace-lsp-roots arg)
    (helix.workspace-lsp-roots *helix.config* arg))

(provide default-line-ending)
(define (default-line-ending arg)
    (helix.default-line-ending *helix.config* arg))

(provide smart-tab)
(define (smart-tab arg)
    (helix.smart-tab *helix.config* arg))

(provide keybindings)
(define (keybindings arg)
    (helix.keybindings *helix.config* arg))

(provide inline-diagnostics-cursor-line-enable)
(define (inline-diagnostics-cursor-line-enable arg)
    (helix.inline-diagnostics-cursor-line-enable *helix.config* arg))

(provide inline-diagnostics-end-of-line-enable)
(define (inline-diagnostics-end-of-line-enable arg)
    (helix.inline-diagnostics-end-of-line-enable *helix.config* arg))
