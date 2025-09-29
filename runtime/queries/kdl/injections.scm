([
  (single_line_comment)
  (multi_line_comment)
] @injection.content
  (#set! injection.language "comment"))

; raw string
(prop
  (value
    (string) @injection.content) @_is_rg
  (#match? @_is_rg "(^r#)")
  (#set! injection.language "regex"))
