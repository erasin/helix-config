((comment) @injection.content
 (#set! injection.language "jsdoc")
 (#match? @injection.content "^/\\*+"))

((comment) @injection.content
 (#set! injection.language "comment"))

(interpolation) @haxe
