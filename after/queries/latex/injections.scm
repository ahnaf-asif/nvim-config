((environment
  name: (curly_group_text) @_name
  (#eq? @_name "cpp")
  body: (_) @injection.content)
 (#set! injection.language "cpp"))
