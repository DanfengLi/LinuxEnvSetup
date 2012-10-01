" Vim syntax file
" Language:	HNCRule
" Maintainer:	Xuhui Shao
" Last change:	Tue Sep 14 16:07:35 PDT 1999 

" Remove any old syntax stuff hanging around
syn clear

" Read the C syntax to start with
" source <sfile>:p:h/c.vim
syntax include $VIMRUNTIME/syntax/c.vim

syn case ignore

syn keyword hncruleStatement		program begin end endvar_noauto endvar include
syn keyword hncruleStatement		terminate return
syn keyword hncruleLabel		case goto rule endrule
syn keyword hncruleConditional		if else then
syn keyword hncruleRepeat		do for while to until

syn keyword hncruleTodo contained	TODO

" String
syn region  hncruleString	start=+'+  end=+'+
syn region  hncruleString	start=+"+  end=+"+

"syn match  hncruleIdentifier		"\<[a-zA-Z_][a-zA-Z0-9_]*\>"

"syn match  hncruleDelimiter		"[()]"

"syn match  hncruleMatrixDelimiter	"[][]"

"if you prefer you can highlight the range
"syn match  hncruleMatrixDelimiter	"[\d\+\.\.\d\+]"

syn match  hncruleNumber		"-\=\<\d\+\.\d\+[dD]-\=\d\+\>"
syn match  hncruleNumber		"-\=\<\d\+\.\d\+[eE]-\=\d\+\>"
syn match  hncruleNumber		"-\=\<\d\+\.\d\+\>"
syn match  hncruleNumber		"-\=\<\d\+\>"
syn match  hncruleByte		"\$[0-9a-fA-F]\+\>"

" If you don't like tabs
"syn match hncruleShowTab "\t"
"syn match hncruleShowTabc "\t"

syn region cCommentL		start="&" skip="\\$" end="$" keepend contains=hncruleTodo
syn region cCommentL		start="//" skip="\\$" end="$" keepend contains=hncruleTodo
syn region cComment	        matchgroup=cCommentStart start="/\*" matchgroup=NONE end="\*/" contains=@cCommentGroup,cCommentStartError,cSpaceError

" avoid match := as a C labels
" syn match hncruleAssignment	"^\s*\I\i*\s*:=\s*\i*"me=e-1 contains=hncruleNumber contains=hncruleOperator

syn match  hncruleNumber		"VAR\d\+[a-z]*"
" syn match  hncruleNumber		"[a-z]\+[_a-z0-9]*"

syn match hncruleOperator	"\s*:=\s*"
syn keyword hncruleOperator	and array boolean delete div downto
syn keyword hncruleOperator	false file get in input insert
syn keyword hncruleOperator	interactive keyboard label maxint
syn keyword hncruleOperator	mod new nil not of or output packed
syn keyword hncruleOperator	put read readln repeat
syn keyword hncruleOperator	reset rewrite seek set
syn keyword hncruleOperator	with write writeln

syn keyword hncruleType	char const integer real text
syn keyword hncruleType	var type string con tbl typ dat rul record
syn keyword hncruleType	Char DateStr Double DtStr Float FloatStr Int16 Int32 IntStr Numeric String TimeStr UInt16 UInt32

syn keyword hncruleFunction	procedure function

syn keyword hncruleOperator     float_sub float_add float_div float_mul float_set log10 float_max float_min float_trunc get_decimal
syn keyword hncruleOperator     float_eql float_noteql float_less float_lesseql float_grtr float_grtreql
syn keyword hncruleOperator     fal_event_avg_coef1 fal_event_avg_coef2 event_coef1_calc event_avg fal_dly_coef1
syn keyword hncruleOperator     rate_decay rate_coef1_calc rate_coef2_calc
syn keyword hncruleOperator     daily_rate fal_consec fal_age_decay age_decay exp_decay
syn keyword hncruleOperator     max_coef_calc max_decay max_shift
syn keyword hncruleOperator     fal_code_conv calcdistance fal_dist_home fal_dist_prev fal_geo_risk
syn keyword hncruleOperator     fal_norm_day fal_norm_time
syn keyword hncruleOperator     normalize which_bin fal_risk_z fal_risk_rate variance str_eql




syn sync lines=250

if !exists("did_hncrule_syntax_inits")
  let did_hncrule_syntax_inits = 1
  " The default methods for highlighting.  Can be overridden later
  hi link hncruleStatement		Statement
  hi link hncruleLabel			Label
  hi link hncruleConditional		Conditional
  hi link hncruleRepeat			Repeat
  hi link hncruleTodo			Todo
  hi link hncruleString			String
  hi link hncruleMatrixDelimiter		Identifier
  hi link hncruleNumber			Number
  hi link hncruleByte			Number
  hi link hncruleOperator			Operator
  hi link hncruleFunction			Function
  hi link hncruleType			Type
  hi link hncruleComment			Comment
  hi link hncruleStatement		Statement
  " hi link hncruleAssignment		Statement

  hi link cCommentL                     Comment
  hi link cComment                      Comment

"optional highlighting
  "hi link hncruleDelimiter		Identifier

  "hi link hncruleShowTab			Error
  "hi link hncruleShowTabc		Error

  "hi link hncruleIdentifier		Identifier
endif


let b:current_syntax = "hncrule"

" vim: ts=8
