; Comments
(comment) @comment

(method) @keyword

(target_url) @string.special.url
(host) @string.special.url
(path) @string.special.path
(scheme) @keyword

(http_version) @constant

(authority
  (pair
    name: (_) @info
    value: (_) @warning))

(pair
  name: (_) @attribute
  value: (_) @string)

(query_param 
  key: (key) @attribute
  value: (value) @string)

(header
  name: (name) @constant
  value: (value) @string)

(external_body
  file_path: (path) @string.special.path) @keyword

(status_code) @number
(status_text) @string

(number) @constant.numeric
(string) @string
(variable) @variable.other.member
(boolean) @constan.builtin.boolean

[
  "="
  "?"
  "&"
  "@"
  "<"
] @operator
