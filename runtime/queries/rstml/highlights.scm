(doctype_node) @constant

(doctype_node
  [
    "<!"
    ">"
  ] @punctuation.bracket)

(open_tag
  [
    "<"
    ">"
  ] @punctuation.bracket)

(close_tag
  [
    "</"
    ">"
  ] @punctuation.bracket)

(self_closing_element_node
  [
    "<"
    "/>"
  ] @punctuation.bracket)

(node_identifier
  [
    "-"
    ":"
    "::"
  ] @punctuation.delimiter)

(open_tag
  name: (node_identifier) @tag)

(close_tag
  name: (node_identifier) @tag)

(self_closing_element_node
  name: (node_identifier) @tag)

(node_attribute
  name: (node_identifier) @attribute)

(generic_identifier
  [
    [
      "<"
      ">"
    ] @punctuation.delimiter
    (node_identifier) @tag
  ])

((text_node) @variable)

(comment_node
  [
    "<!--"
    "-->"
  ] @comment)
