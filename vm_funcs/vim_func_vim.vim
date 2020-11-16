" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author         : v.m. (vincent_ma0001@hotmail.com)                                       == "
" ==   Version        : 0.0.0.0                                                                 == "
" ==   Create Time    : 2020-09-10 20:11                                                        == "
" ==   Modify Time    : 2020-09-10 20:31                                                        == "
" ==   Issue          :                                                                         == "
" ==   Change List    :                                                                         == "
" ==      [ 0.0.0.0 ] - 基础版本                                                                == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Copyright(C) : This file has copyrighted by v.m., the all right will been reserved!      == "
" ==                                                                                            == "
" ================================================================================================ "

" ================================================================================================ "
" ==  文件编码                                                                                   == "
" ================================================================================================ "
scriptencoding utf-8

" ================================================================================================ "
" ==  TODO 配置说明                                                                             == "
" ================================================================================================ "

if !exists("g:gLineLen")
    let g:gLineLen = 100
endif

if !exists("g:gAuthor")
    let g:gAuthor = "$USER$"
endif

if !exists("g:gEmail")
    let g:gEmail = "$EMAIL$"
endif

if !exists("g:gLisense")
    let g:gLisense = "$LISENSE$"
endif

" ================================================================================================ "
" ==  ViM文件模板函数                                                                           == "
" ================================================================================================ "

function! WriteLine_f( aLenNum, aTextLead, aText, aTextTail )
" {{{
    let s:sTextLeadLen = strdisplaywidth(a:aTextLead)
    let s:sTextTailLen = strdisplaywidth(a:aTextTail)

    let s:sTextLen  = g:gLineLen-s:sTextLeadLen-s:sTextTailLen
    let s:sTextLen  = s:sTextLen<=0?0:s:sTextLen
    let s:sLineText = a:aTextLead.repeat(a:aText, s:sTextLen).a:aTextTail

    call append( a:aLenNum, s:sLineText )
" }}}
endfunction

" ================================================================================================ "
function! WriteLine_c( aLenNum, aTextLead, aText, aTextTail, aTextFill )

    let s:sTextLeadLen = strdisplaywidth(a:aTextLead)
    let s:sTextTailLen = strdisplaywidth(a:aTextTail)
    let s:sTextLen     = strdisplaywidth(a:aText)

    let s:sRemainedLen = g:gLineLen - s:sTextLen - s:sTextLeadLen - s:sTextTailLen
    let s:sLenLeft     = s:sRemainedLen/2
    let s:sLenLeft     = s:sLenLeft<=0?0:s:sLenLeft
    let s:sLenRight    = s:sRemainedLen - s:sLenLeft
    let s:sLenRight    = s:sLenRight<=0?0:s:sLenRight

    let s:sLineText    = a:aTextLead.repeat(a:aTextFill, s:sLenLeft).a:aText.repeat(a:aTextFill, s:sLenRight).a:aTextTail

    call append( a:aLenNum, s:sLineText )

endfunction

" ================================================================================================ "
function! WriteLine_l( aLenNum, aTextLead, aText, aTextTail, aTextFill )

    let s:sTextLeadLen = strdisplaywidth(a:aTextLead)
    let s:sTextTailLen = strdisplaywidth(a:aTextTail)
    let s:sTextLen     = strdisplaywidth(a:aText)

    let s:sLenRight    = g:gLineLen - s:sTextLen - s:sTextLeadLen - s:sTextTailLen
    let s:sLenRight    = s:sLenRight<=0?0:s:sLenRight

    let s:sLineText    = a:aTextLead.a:aText.repeat(a:aTextFill, s:sLenRight).a:aTextTail

    call append( a:aLenNum, s:sLineText )

endfunction

" ================================================================================================ "
function! WriteLine_e( aLenNum )

    call append( a:aLenNum, "" )
    
endfunction

" ================================================================================================ "
function! NewVimFile()

    " 写入文件头
    call WriteLine_f(  0, "\" ===", "="                                                 , "=== \""      )
    call WriteLine_f(  1, "\" == ", " "                                                 , " == \""      )
    call WriteLine_c(  2, "\" == ", "VIM 配置文件"                                      , " == \"", " " )
    call WriteLine_f(  3, "\" == ", " "                                                 , " == \""      )
    call WriteLine_f(  4, "\" == ", "-"                                                 , " == \""      )
    call WriteLine_f(  5, "\" == ", " "                                                 , " == \""      )
    call WriteLine_l(  6, "\" == ", "  Author         : ".g:gAuthor."  (".g:gEmail.")"  , " == \"", " " )
    call WriteLine_l(  7, "\" == ", "  Version        : 0.0.0.0"                        , " == \"", " " )
    call WriteLine_l(  8, "\" == ", "  Create Time    : ".strftime("%Y-%m-%d %H:%M:%S") , " == \"", " " )
    call WriteLine_l(  9, "\" == ", "  Modify Time    : ".strftime("%Y-%m-%d %H:%M:%S") , " == \"", " " )
    call WriteLine_l( 10, "\" == ", "  Issue          : "                               , " == \"", " " )
    call WriteLine_l( 11, "\" == ", "  Change List    : "                               , " == \"", " " )
    call WriteLine_l( 12, "\" == ", "     [ 0.0.0.0 ] - 基础版本"                       , " == \"", " " )
    call WriteLine_f( 13, "\" == ", " "                                                 , " == \""      )
    call WriteLine_f( 14, "\" == ", "-"                                                 , " == \""      )
    call WriteLine_f( 15, "\" == ", " "                                                 , " == \""      )
    call WriteLine_l( 16, "\" == ", "  Copyright(C) : ".g:gLisense                      , " == \"", " " )
    call WriteLine_f( 17, "\" == ", " "                                                 , " == \""      )
    call WriteLine_f( 18, "\" ===", "="                                                 , "=== \""      )
    call WriteLine_e( 19 )

    " 添加文件编码
    call WriteLine_f( 20, "\" ===", "="                                                 , "=== \""      )
    call WriteLine_l( 21, "\" == ", "文件编码"                                          , " == \"", " " )
    call WriteLine_f( 22, "\" ===", "="                                                 , "=== \""      )
    call WriteLine_l( 23, ""      , "scriptencoding utf-8"                              , ""      , ""  )
    call WriteLine_e( 24 )

    " 写入文件尾
    call WriteLine_e('$')
    call WriteLine_f('$', "\" ===", "="                                                 , "=== \""      )
    call WriteLine_c('$', "\" == ", "结束文件"                                          , " == \"", " " )
    call WriteLine_f('$', "\" ===", "="                                                 , "=== \""      )

endfunction   

" ================================================================================================ "
" == 添加分割段注释                                                                             == "
" ================================================================================================ "

function! AddVimComment( aCommentText )

    call WriteLine_f( line(".")+0, "\" ===", "="                                        , "=== \""      )

    if aCommentText == ""
        call WriteLine_l( line(".")+1, "\" == ", "TODO : add comment here"              , " == \"", " " )
    else
        call WriteLine_l( line(".")+1, "\" == ", a:aCommentText                         , " == \"", " " )
    endif

    call WriteLine_f( line(".")+2, "\" ===", "="                                        , "=== \""      )

endfunction

" ================================================================================================ "
" ==  重新定义加载函数                                                                          == "
" ================================================================================================ "
command! -nargs=0 NfVim  :call NewVimFile()
command! -nargs=0 AcVim  :call AddVimComment()

" ================================================================================================ "
" ==                                          结束文件                                          == "
" ================================================================================================ "
