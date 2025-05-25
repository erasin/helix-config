; 基本元素
(line_comment) @comment.line
(block_comment) @comment.block
(string) @string
(number) @number

(control) @keyword.control.conditional
(control_repeat) @keyword.control.repeat
(attribute) @variable.other.member

[
  (block_keyword)
  (compare_keyword)
  (extend_keyword)
] @keyword

"include" @keyword.control.import

; (parameter) @variable.parameter

((const) @constant
 (#match? @constant "__?[A-Z][A-Z\\d_]+__$"))

(variable) @variable.parameter

(function) @function

[
  "|"
  "."
] @operator

[
  "("
  ")"
  "{"
  "}"
] @punctuation.bracket

[
  "$"
  "{"
  "}"
]@keyword
