[
  "#"
  (precision_qualifier)
  (interpolation_qualifier)
] @keyword

[
  "switch"
  "case"
  "default"
  "if"
  "else"
  "elif"
] @keyword.control.conditional

[
  "while"
  "for"
] @keyword.control.repeat

[
  "break"
  "return"
  "continue"
] @keyword.control.return

[
  "include"
] @keyword.control.import

[
  "do"
  "in"
  "out"
  "inout"
] @keyword.operator

[
  "struct"
] @keyword.storage.type

[
  "render_mode"
  "shader_type"
  "group_uniforms"
  "varying"
  "uniform"
  "global"
  "instance"
  "const"
] @keyword.storage.modifier

(string) @string

[
  "="
  "+="
  "-="
  "!"
  "~"
  "+" 
  "-"
  "*"
  "/"
  "%"
  "||"
  "&&"
  "|"
  "^"
  "&"
  "=="
  "!="
  ">"
  ">="
  "<="
  "<"
  "<<"
  ">>"
  "++"
  "--"
] @operator


[
  "."
  ","
  ";" 
] @punctuation.delimiter 

[
  "(" 
  ")" 
  "[" 
  "]" 
  "{" 
  "}" 
] @punctuation.bracket

[
  (boolean)
  (integer)
] @constant.builtin.boolean

(float) @constant.numeric.float

(builtin_type) @type.builtin

; (ident_type) @type.definition

[
  (shader_type)
  (render_mode)
  (hint_name)
] @type.parameter

(builtin_variable) @constant.builtin
(builtin_function) @function.builtin

(group_uniforms_declaration
  group_name: (ident) @type.parameter
  subgroup_name: (ident) @type.parameter)

(struct_declaration
  name: (ident) @constructor)
(struct_member
  name: (ident) @type.parameter)
(function_declaration
  name: (ident) @function)
(parameter
  name: (ident) @variable.parameter)
(member_expr
  member: (ident) @variable.other.member) 
(call_expr
  function: [
    (ident)
    (builtin_type)] @function)
(call_expr
  function: (builtin_type) @function)

(ident) @variable
(comment) @comment

