if exists('g:no_cpp_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

syntax match cppNiceOperator "==" conceal cchar=≟
syntax match cppNiceOperator "!=" conceal cchar=≠
syntax match cppNiceOperator "<=" conceal cchar=≤
syntax match cppNiceOperator ">=" conceal cchar=≥
syntax match cppNiceOperator "++" conceal cchar=⧺
syntax match cppNiceOperator "||" conceal cchar=⋁
syntax match cppNiceOperator "&&" conceal cchar=⋀
syntax match cppNiceOperator "<<" conceal cchar=≪
syntax match cppNiceOperator ">>" conceal cchar=≫
syntax match cppNiceOperator "\:\:" conceal cchar=∷
syntax match cppNiceOperator "->" conceal cchar=→

let s:extraConceal = 1
if s:extraConceal
  syntax keyword cppNiceKeyword const conceal cchar=ℂ
  syntax keyword cppNiceKeyword auto conceal cchar=⍺
  syntax keyword cppNiceType void conceal cchar=∅

  syntax match cppHiddenOperator /^\s*}$/ conceal
  syntax match cppHiddenOperator /\(^\s*\)\@<=}\s*/ conceal
  syntax match cppHiddenOperator /\ *{$/ conceal
  syntax match cppHiddenOperator /;$/ conceal
endif

hi link cppNiceOperator Operator
hi link cppNiceKeyword Keyword
hi link cppNiceType Type

hi! link Conceal Operator
setlocal conceallevel=2
