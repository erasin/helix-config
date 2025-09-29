(number) @constant.numeric.float
(beat_pattern) @constant.numeric
(symbol) @string.special.symbol
(node
  (node_name) @function.builtin
  (#match? @function.builtin
    "^(adc|add|adsr|apfmsgain|arrange|balance|bd|choose|constsig|delayms|delayn|envperc|eval|expr|get|hh|imp|lpf|meta|mix|msgsynth|mul|noise|noiz|onepole|onepole|pan|pattern_synth|plate|points|psampler|reverb|rhpf|sampler|saw|sawsynth|sendpass|seq|sin|sn|sp|speed|squ|squsynth|tri|trisynth|apfgain)$"))

(line
  (reference) @function)

[
  (reference)
  (reference_pointer)
] @function

[
  ";"
  ":"
  ">>"
] @operator

[
  "##"
  "#"
  "`"
] @tag

(comment) @comment
