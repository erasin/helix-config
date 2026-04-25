; BSN Textobjects queries

; Comments
(comment) @comment.inside
(comment)+ @comment.around

; Name shorthands
(name_shorthand) @variable.inside
(name_shorthand)+ @variable.around

; Field assignments
(field_assignment) @field.inside
(field_assignment)+ @field.around

; Block (Children [...])
(block) @block.inside
(block) @block.around

; Struct body
(struct_body) @block.inside
(struct_body) @block.around

; Tuple body
(tuple_body) @block.inside
(tuple_body) @block.around

; Entities (entire entity definitions)
(entity) @entry.inside
(entity) @entry.around

; Inherit declarations
(inherit_declaration) @keyword.inside
(inherit_declaration)+ @keyword.around
