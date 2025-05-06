(struct_declaration (identifier) @definition.struct)
(function_declaration (identifier) @definition.function)
(type_constructor_or_function_call_expression
  (type_declaration (identifier) @definition.function))
(variable_identifier_declaration (identifier) @definition.type)
