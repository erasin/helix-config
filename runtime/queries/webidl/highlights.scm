
(type_declaration (identifier) @constructor)

(type_member
  (type) @type 
  (identifier) @variable.parameter)

(interface_declaration (identifier) @constructor)
(operation_member (identifier) @function)
(parameter 
  (type) @type 
  (identifier) @variable.parameter)

(primitive_type) @type

(attribute_member
  (identifier) @variable.parameter)

(extended_attributes
  (extended_key) @keyword)

(extended_attributes
  (extended_key) @keyword
  (extended_attribute_ident (identifier) @constructor))

[
  "interface"
  "namespace"
  "dictionary"
  "enum"
  "string"
  "void"
] @keyword.storage.type


[
  "readonly"
  "attribute"
  "undefined"
] @keyword

[
  (integer_literal)
  (decimal_literal) 
]@constant.numeric.integer
(float_literal) @constant.numeric.float
(boolean_literal) @constant.builtin.boolean
(string_literal) @string


(comment) @comment

