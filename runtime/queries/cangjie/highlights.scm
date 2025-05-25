; vchuoshen6
(packageName) @namespace
(stringLiteral) @string

(booleanLiteral) @constant.builtin.boolean
(integerLiteral) @constant.numeric.integer
(floatLiteral) @constant.numeric.float

; (varBindingPattern) @variable

(typeIdentifier) @type

(className) @type
(structName) @str
(interfaceName) @type
(returnType) @type
(Bool) @type.builtin
super: (classType) @type
; super: (interfaceType) @type

; (postfixExpression
;   (thisSuperExpression) @variable.builtin
;   (automicVariable (varBindingPattern)@variable.other.member)
; )

(callSuffix) @function
; (atomicVariable) @function
(funcName) @function
(propertyName) @property
(parameter) @variable.parameter
; (valueArgument) @variable.parameter

(blockComment) @comment.block
(lineComment) @comment.line


; keywords

(modifier) @keyword
[
  (classModifiers)
  (interfaceModifiers)
] @keyword

[
    "Int8"
    "Int16"
    "Int32"
    "Int64"
    "IntNative"
    "UInt8"
    "UInt16"
    "UInt32"
    "UInt64"
    "UIntNative"
    "Float16"
    "Float32"
    "Float64"
    "Rune"
    "Bool"
    "Unit"
    "Nothing"
    "This"
] @type.builtin


[
  "package"
  "import"
]@keyword.control.import

[

    "if"
    "else"
    "case"
    "match"
    "try"
    "catch"
    "do"
]@keyword.control.conditional

[
    "for"
    "while"
    "where"
    "foreign"

]@keyword.control.repeat

[

    "extend"
    "is"
    "as"
    "in"
]@keyword.operator

[
    "return"
    "throw"
    "continue"
    "break"
    "finally"
]@keyword.control.return

[
    "main"
    "func"
    "super"
    "get"
    "set"
    "inout"
    "prop"
    "spawn"
    "init"
]@keyword.control.function

[
    "enum"
    "redef"
    "abstract"
    "type"
    "struct"
    "class"
    "interface"
    "let"
    "var"

]@keyword.control.storage.type

[
    "open"
    "mut"
    "const"
    "static"
    "public"
    "private"
    "protected"
    "override"
    "unsafe"
]@keyword.control.storage.modifier


[
    "macro"
    "operator"
    "synchronized"
] @keyword

; operetors
[
    "("
    ")"
    "["
    "]"
    "{"
    "}"
] @punctuation.bracket
[
    "."
    ","
    ":"
    ";"
] @punctuation.delimiter
[
    "**"
    "*"
    "%"
    "/"
    "+"
    "-"
    "++"
    "--"
    "&&"
    "||"
    "!"
    "&"
    "|"
    "^"
    "<<"
    ">>"
    "="
    "+="
    "-="
    "*="
    "**="
    "/="
    "%="
    "&="
    "|="
    "^="
    "<<="
    ">>="
    "->"
    "<-"
    "=>"
    "..="
    ".."
    "@"
    "?"
    "<:"
    "<"
    ">"
    "<="
    ">="
    "!="
    "=="
    "_"
    "|>"
    "~>"
    "&&="
    "||="
] @operator
