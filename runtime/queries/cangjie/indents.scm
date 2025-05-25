; 缩进规则
(classDefinition
  (classBody) @indent
) 

(init) @indent

(functionDefinition
  (block) @indent
)

(operatorFunctionDefinition
  (block) @indent
)

(callSuffix) @indent

(arrayLiteral) @indent

(ifExpression) @indent

(matchExpression
  (matchCase) @indent
) @indent

(forInExpression) @indent

[
  "]"
  ")"
  "}"
] @outdent

[
  (lineComment)
  (blockComment)
] @indent
