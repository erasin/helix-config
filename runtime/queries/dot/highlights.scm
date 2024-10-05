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
  id: (id) @namespace)

(node_id (id) @type)

(attribute
  name: (id) @attribute)

[
  (comment)
  (preproc)
] @comment

