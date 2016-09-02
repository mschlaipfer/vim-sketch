" Vim syntax file
" Language: Sketch
" Maintainer: Matthias Schlaipfer
" Latest Revision: Sep 2, 2016

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword basicLanguageKeywords struct for while if else repeat minrepeat
syn keyword preproc define
syn keyword types bit int char void
syn keyword const false true
syn keyword operators ref assert assume pragma harness return

syn region string start=/\v"/ skip=/\v\./ end=/\v"/
syn match       cNumbers        display transparent "\<\d\|\.\d" contains=cNumber
syn match       cNumber         display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"

syn match const /??/

syn match lnComment "//.*$"
syn region blkComment start="\/\*" end="\*\/"

" Highlight Struct and Function names
syn match    cCustomParen    "(" contains=cParen,cCppParen
syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen
syn keyword cStructure struct nextgroup=cStructName skipwhite
syn match cStructName "\h\w*" contained

hi link cStructName Type
hi def link cCustomFunc  Function

let b:current_syntax = "sketch"

hi def link basicLanguageKeywords   Statement
hi def link lnComment 	Comment
hi def link blkComment 	Comment
hi def link const	Constant
hi def link string	Constant
hi def link cNumber Number
hi def link types Type
hi def link operators         Operator
hi def link preproc PreProc

