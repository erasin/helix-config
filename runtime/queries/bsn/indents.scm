; BSN Indent queries

; Increase indent after opening brackets
[
  (struct_body)
  (tuple_body)
  (block)
] @indent

; Keep indent for entries within bodies
[
  (field_assignment)
  (entity)
  (inherit_declaration)
  (name_shorthand)
] @extend
