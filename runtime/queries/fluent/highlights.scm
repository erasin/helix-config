(comment) @comment

(message_identifier) @label
(term_identifier) @constant

(value) @string
(number) @constant.numeric

(function_identifier) @function
(variable_identifier) @variable.parameter
(facet_identifier) @type.enum.variant
(attribute (identifier) @attribute)

; (attribute  (identifier) @variable.other.member)

[
  "="
  "$"
  "*"
  ":"
  "."
  "->"
] @operator

[
  "(" 
  ")" 
  "[" 
  "]" 
  "{" 
  "}" 
] @punctuation.bracket

