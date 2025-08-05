[
  (program)
  (compound_statement)
  (array_creation_expression)
  (parenthesized_expression)
  (encapsed_string)
  (formal_parameters)
] @rainbow.scope

([
  (string_value)
 ] @rainbow.scope
 (#set! rainbow.include-children))

["(" ")" "[" "]" "{" "}" "\'" "\"" ] @rainbow.bracket
