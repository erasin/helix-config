(keyword) @keyword
(string_literal) @string
(number_literal) @constant.numeric
(identifier) @variable

[
  (edgeop)
  (operator)
] @operator

[
  "->"  
  "--"  
] @operator

[
  ","
  ";"
] @punctuation.delimiter

[
  "{"
  "}"
  "["
  "]"
  "<"
  ">"
] @punctuation.bracket

(subgraph
  id: (id
    (identifier) @namespace)
)

(attribute
  name: (id
    (identifier) @type)
  value: (id
    (identifier) @constant)
)

(comment) @comment

(preproc) @keyword.directive
