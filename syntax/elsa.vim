if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "elsa"

syn match elsaComment "--.*$"
syn match elsaArrow "->"
syn match elsaLambda "[\\]"
syn match elsaStep "=[abd*~]>"
syn keyword elsaEval eval nextgroup=elsaEvalLabel skipwhite
syn match elsaEvalLabel "\<\w\+\>" containedin=elsaEval contained
syn keyword elsaLet let nextgroup=elsaAlias skipwhite
syn match elsaAlias "\<[A-Z_][A-Z_0-9]*\>"

hi def link elsaComment Comment
hi def link elsaArrow Special
hi def link elsaLambda Special
hi def link elsaStep Conditional
hi def link elsaEval Keyword
hi def link elsaEvalLabel Function
hi def link elsaLet Keyword
hi def link elsaAlias Type
