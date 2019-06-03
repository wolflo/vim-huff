" only load this syntax file if no other was loaded
if exists('b:current_syntax')
  finish
endif

syn match huffMethod '#include'
syn match huffDefine '#define'

syn keyword huffTodo TODO XX FIXME NOTE TBD
syn keyword huffKeyword
    \ takes
    \ returns

syn keyword huffMacro nextgroup=huffMacroName skipwhite skipempty
    \ macro

syn match huffMacroName contained skipwhite skipempty
    \ '\v<[0-9a-zA-Z_]*'

syn keyword huffTemplate nextgroup=huffTemplateName skipwhite skipempty
    \ template

syn match huffTemplateName contained skipwhite skipempty
    \ '<[0-9a-zA-z_,]*>'

syn region huffComment          start=/\/\// end=/$/ contains=huffTodo
syn region huffComment          start=/\/\*/ end=/\*\// contains=huffTodo
syn region huffString           start=/\v"/ skip=/\v\\./ end=/\v"/
syn region huffString           start="\v'" skip="\v\\." end="\v'"

hi def link huffTodo Todo
hi def link huffComment Comment
hi def link huffKeyword Keyword
hi def link huffDefine Define
hi def link huffMethod Special
hi def link huffString String
hi def link huffMacro Keyword
hi def link huffMacroName Function
hi def link huffTemplate Special
hi def link huffTemplateName Constant


let b:current_syntax = 'huff'
