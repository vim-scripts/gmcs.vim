" Vim compiler file
" Compiler:	Mono C#
" Maintainer:	Erik Falor (ewfalor@gmail.com)
" Last Change:	2007 May 14

if exists("current_compiler")
  finish
endif
let current_compiler = "gmcs"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" default errorformat
CompilerSet errorformat=%f(%l\\,%c):\ %trror\ CS%\\d%\\+:\ %m,
	\%f(%l\\,%c):\ %tarning\ CS%\\d%\\+:\ %m,
	\%-G%.%#Compilation%.%#

" default make
CompilerSet makeprg=gmcs\ %
