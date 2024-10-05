(comment) @comment.inside
(comment)+ @comment.around

(attribute 
  name: (id)
  value: (_) @parameter.inside) @parameter.around

[
  (node_stmt)
  (edge_stmt)
  (attr_stmt)
] @entry.around
