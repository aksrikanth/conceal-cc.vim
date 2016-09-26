if exists('g:no_cpp_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

syntax match cppNiceOperator "*" conceal cchar=⁕
syntax match cppNiceOperator "&" conceal cchar=ℰ
syntax match cppNiceOperator "==" conceal cchar=≟
syntax match cppNiceOperator "!=" conceal cchar=≠
syntax match cppNiceOperator "<=" conceal cchar=≤
syntax match cppNiceOperator ">=" conceal cchar=≥
syntax match cppNiceOperator "++" conceal cchar=⧺
syntax match cppNiceOperator "--" conceal cchar=╌
syntax match cppNiceOperator "||" conceal cchar=⋁
syntax match cppNiceOperator "&&" conceal cchar=⋀
syntax match cppNiceOperator "<<" conceal cchar=≪
syntax match cppNiceOperator ">>" conceal cchar=≫
syntax match cppNiceOperator "\:\:" conceal cchar=∷
syntax match cppNiceOperator "->" conceal cchar=⇾
syntax match cppNiceOperator " \zs\*\ze " conceal cchar=⨉

syntax match cppNiceFunction "EXPECT_EQ" conceal cchar=≟
syntax match cppNiceFunction "ASSERT_EQ" conceal cchar=≡

let s:extraConceal = 1
if s:extraConceal
  syntax keyword cppNiceConstant nullptr conceal cchar=⦳

  syntax keyword cppNiceKeyword auto conceal cchar=⍺
  syntax keyword cppNiceKeyword break conceal cchar=↯
  syntax keyword cppNiceKeyword const conceal cchar=ℂ
  syntax keyword cppNiceKeyword continue conceal cchar=↟
  syntax keyword cppNiceKeyword else conceal cchar=⁑
  syntax keyword cppNiceKeyword explicit conceal cchar=⍷
  syntax keyword cppNiceKeyword for conceal cchar=∀
  syntax keyword cppNiceKeyword if conceal cchar=⁇
  syntax keyword cppNiceKeyword override conceal cchar=↠
  syntax keyword cppNiceKeyword return conceal cchar=⇦
  syntax keyword cppNiceKeyword static conceal cchar=∬
  syntax keyword cppNiceKeyword virtual conceal cchar=ⅵ

  syntax keyword cppNiceType void conceal cchar=∅

  syntax match cppHiddenOperator /^\s*}$/ conceal
  syntax match cppHiddenOperator /\(^\s*\)\@<=}\s*/ conceal
  syntax match cppHiddenOperator /\ *{$/ conceal
  syntax match cppHiddenOperator /;$/ conceal
endif

hi link cppNiceConstant Constant
hi link cppNiceKeyword Keyword
hi link cppNiceOperator Operator
hi link cppNiceType Type

hi! link Conceal Operator
setlocal conceallevel=2
