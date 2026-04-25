; BSN Injection queries

; Inject Rust highlighting for bsn! and bsn_list! macros in Rust files.
; This enables proper syntax highlighting for closures like:
;   on(|jump: On<Jump>| { info!("player jumped!"); })
;
; Add this to ~/.config/helix/runtime/queries/rust/injections.scm
;
; ((macro_invocation
;     macro: (identifier) @_macro
;     (token_tree) @injection.content)
;   (#match? @_macro "^(bsn|bsn_list)$")
;   (#set! injection.language "bsn"))
