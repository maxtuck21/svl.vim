" syntax/svl.vim

" Quit when a syntax file was already loaded 
if exists("b:current_syntax")
  finish
endif

syntax keyword svlKeyword
    \ local
    \ global 
    \ if 
    \ endif
    \ else
    \ loop
    \ endloop
    \ for
    \ while
    \ function
    \ endfunction
    \ print
    \ in
    \ then

syntax match svlNumber "\v<\d+>"
syntax match svlNumber "\v<\d+\.\d+>"
syntax match svlNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match svlNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match svlNumber "\v<0b[01]+>"
syntax match svlNumber "\v<0o\o+>"

syntax match svlOper "\(==\|!=\|>=\|<=\|=\~\|!\~\|>\|<\|=\)[?#]\{1,2}"	
syntax region svlOper start="\[" end="\]"
syntax match svlOper "||\|&&\|[-+.]"

syntax region svlString start=/"/ skip=/\\"/ end=/"/
syntax region svlString start=/'/ skip=/\\'/ end=/'/

syntax match svlComment "\v\/\/.*$"

highlight default link svlNumber Number
highlight default link svlKeyword Keyword
highlight default link svlString String
highlight default link svlComment Comment
highlight default link svlOper Operator
