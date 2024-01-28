(identifier !type) @variable
(comment) @comment

; Preprocessor Statement
; --------
(preprocessor_statement) @tag
; (metadata name: (identifier) @type) @tag

; MetaData
; --------
(metadata) @tag
(metadata name: (identifier) @type) @tag

; Generic/Type Params
; --------------
(type_params
  "<" @punctuation.bracket
  (type_param (identifier) @type)
  ">" @punctuation.bracket
)

; Declarations
; ------------
(import_statement name: [
  (identifier) @type 
;   (_ (identifier) @type)
;   (_(_ (identifier) @type))
;   (_(_(_ (identifier) @type)))
;   (_(_(_(_ (identifier) @type))))
;   (_(_(_(_(_ (identifier) @type)))))
])
(package_statement name: (identifier) @type) 

(class_declaration name: (identifier) @type.constructor)
(typedef_declaration name: (identifier) @type.constructor)

(function_declaration name: (identifier) @function)
(function_arg name: (identifier) @variable.parameter)

; Expressions
; -----------
; (call_expression name: (identifier) @variable.parameter)

; TODO: Figure out how to determined when "nested member call" is last ident.
; apparently this is a known issue https://github.com/tree-sitter/tree-sitter/issues/880
(call_expression object: [
  (identifier) @function 
  (_ (identifier) @function.method .)
  (_(_ (identifier) @function.method .))
  (_(_(_ (identifier) @function.method .)))
  (_(_(_(_ (identifier) @function.method .))))
  (_(_(_(_(_ (identifier) @function.method .)))))
])

; Literals
; --------
[(keyword) (null)] @keyword
; (type) @type
(type (identifier) !built_in) @type
(type built_in: (identifier)) @type.builtin
(integer) @constant.numeric.integer
(float) @constant.numeric.float
(string) @string
(bool) @constant.builtin.boolean
(operator) @operator

[
  "extends"
] @keyword

; Interpolation
; -------------
(interpolation "$" @punctuation.special)
(interpolation
  "${" @punctuation.special
  "}" @punctuation.special
)


; Tokens
; ------

(":") @punctuation.special
(pair [":" "=>"] @punctuation.special)

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
]  @punctuation.bracket
;
[
;   ";"
;   "?."
;   "."
  ","
] @punctuation.delimiter