(keyword) @keyword

; Variables
 
(identifier) @variable

; Types

(node (identifier) @type)

(type) @type

(annotation_type) @type.builtin

; Properties

(prop (identifier) @attribute)

; Literals

(string) @string

(escape) @string.escape

(number) @constant.numeric
(number (decimal) @constant.numeric.float)
(number (exponent) @constant.numeric.float)

(boolean) @constant.builtin.boolean

"null" @constant.builtin

; Operators
[
 "="
 "+"
 "-"
] @operator

; Punctuation

[
"{" "}"
"(" ")"
] @punctuation.bracket

[
  ";"
] @punctuation.delimiter

; Comments

[
  (single_line_comment)
  (multi_line_comment)
] @comment
