" only load this syntax file if no other was loaded
if exists("b:current_syntax")
  finish
endif

" match todo comments
syntax keyword huffTodo TODO XX FIXME NOTE

highlight default link swiftTodo Todo
highlight default link huffComment Comment
