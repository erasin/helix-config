(line_comment) @comment.line
(block_comment) @comment.block

(number (float)) @constant.numeric.float
(number (integer)) @constant.numeric.integer
(boolean) @constant.builtin.boolean
(string) @string

 [
  "if"
  "range"
  "in"
  "notin"
  "switch"
  "case"
  "defined"
  "else"
  "default"
] @keyword.control.conditional

[
  "volist"
  "foreach"
  "for"
] @keyword.control.repeat


(attribute) @variable.other.member

[
  "neq"
  "eq"
  "egt"
  "elt"
  "lt"
  "gt"
  "notempty"
  "empty"
  "block"
  "literal"
  "extend"
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
  "AND"
  "OR"
  "=="
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
