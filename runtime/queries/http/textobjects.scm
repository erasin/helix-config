(request) @function.around
(request) @class.around

(header
  value: (_) @entry.inside) @entry.around
(pair
  value: (_) @entry.inside) @entry.around
(query_param 
  value: (_) @entry.inside) @entry.around

(comment) @comment.inside
(comment)+ @comment.around
