[
  (single_line_comment)
  (multi_line_comment)
] @comment

(node
  (identifier) @variable)

(node
  (identifier) @function
  (node_field) @has
  (#one-line? @has))

(node_children
  (node
    (identifier) @type.parameter))

(prop
  (identifier) @attribute)

(type
  (_) @type) @punctuation.bracket

(keyword) @keyword

(string) @string

(number) @constant.numeric

(boolean) @constant.builtin.boolean

"." @punctuation.delimiter

"=" @operator

[
  "{"
  "}"
] @punctuation.bracket
