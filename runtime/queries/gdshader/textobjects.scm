(struct_declaration ) @class.around

(function_declaration 
  (block) @function.inside) @function.around

[
  (parameter)
  (member_expr)
  (struct_member) 
  (group_uniforms_declaration)
  (shader_type)
  (render_mode)
  (hint_name)
] @parameter.inside @parameter.around)

(comment) @comment.inside
(comment)+ @comment.around
