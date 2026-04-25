; BSN (Bevy Scene Notation) highlights for Helix
; https://github.com/nicoschell/tree-sitter-bsn

; String values
(string) @string

; Number values (including floats like 4.0, 10.)
(number) @number

; Comments
(comment) @comment

; Entity type identifiers (like Player, Sprite, Transform)
(entity
  (identifier) @type)

; Scoped identifiers like Emotion::Happy, Transform::IDENTITY
(scoped_identifier
  (identifier) @type)

; Field names in assignments like image: "player.png"
(field_assignment
  (identifier) @attribute)

; Name shorthands like #Root, #MyButton
(name_shorthand
  "#" @attribute
  (identifier) @variable.other)

; Template patch @mytemplate
(template_patch
  "@" @attribute)

; Block brackets
(block
  "[" @punctuation.bracket
  "]" @punctuation.bracket)

; Struct body braces
(struct_body
  "{" @punctuation.bracket
  "}" @punctuation.bracket)

; Tuple body parentheses
(tuple_body
  "(" @punctuation.bracket
  ")" @punctuation.bracket)

; Inherit declarations like :"player.bsn" or :player
(inherit_declaration
  ":" @operator)

; Scope resolution operator
"::" @operator

; Punctuation
"," @punctuation.delimiter
":" @operator
"@" @attribute
"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
