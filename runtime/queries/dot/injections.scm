((comment) @injection.content
 (#set! injection.language "comment"))

((html_internal) @injection.content
  (#set! injection.language "html"))

; ((attribute 
;   value: (id (html_string (html_internal) @injectioin.content)))
;   (#set! injection.language "xml"))
