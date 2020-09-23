" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author         : v.m.(vincent_ma0001@hotmail.com)                                        == "
" ==   Version        : 0.0.0.0                                                                 == "
" ==   Create Time    : 2020-09-10 18:43:50                                                     == "
" ==   Modify Time    : 2020-09-10 20:19:28                                                     == "
" ==   Issue          :                                                                         == "
" ==   Change List    :                                                                         == "
" ==      [ 0.0.0.0 ] - 基础版本                                                                == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Copyright(C) : This file has copyrighted by v.m., the all right will been reserved!      == "
" ==                                                                                            == "
" ================================================================================================ "

" 设置文件编码
scriptencoding utf-8


" ================================================================================================ "
" ==   : todo (add function brief) 
" == ------------------------------------------------------------------------------------------ == "
" ==  return   : todo ( add return comment info )
" ==  paramter : 
" [  :  ] {{{ 
function! Myfilename( ... )
    return "[ __".expand("%:r")."__ ]"
endfunction
" }}} end of func 
" ================================================================================================ "


" ================================================================================================ "
" ==                                                                                            == " 
" ==     StringLine_C    : 创建一个指定长度的字符串，其中的字符串采用居中对齐                   == " 
" ==              RETURN : 创建完的字符串                                                       == "
" ==                                                                                            == "  
" == ------------------------------------------------------------------------------------------ == "
" ==  Paramter :
" ==      aLineLen       - 创建的字符串长度
" ==      aText          - 创建的字符串内容
" ==      aTextFill      - 除字符串内容外，其他空间需要填充的字符
" StringLine_C {{{ 
function! StringLine_C( aLineLen, aText, aTextFill )

    let s:sTextLen          = strdisplaywidth(a:aText)
    let s:sTextRemainedLen  = a:aLineLen - s:sTextLen
    let s:sTextRemainedLen  = s:sTextRemainedLen<=0?0:s:sTextRemainedLen

    let s:sTextLeftLen      = s:sTextRemainedLen/2
    let s:sTextLeftLen      = s:sTextLeftLen<=0?0:s:sTextLeftLen

    let s:sTextRightLen     = s:sTextRemainedLen - s:sTextLeftLen
    let s:sTextRightLen     = s:sTextRightLen<=0?0:s:sTextRightLen

    let s:sString           = repeat(a:aTextFill,s:sTextLeftLen).a:aText.repeat(a:aTextFill,s:sTextRightLen)
    echom s:sString

    return s:sString

endfunction 
" }}} End of func StringLine_C
" ================================================================================================ "

" ================================================================================================ "
" ==                                                                                            == " 
" ==     StringLine_L    : 创建一个指定长度的字符串，其中的字符串采用左对齐                     == " 
" ==              Return : 创建完的字符串                                                       == "
" ==                                                                                            == "  
" == ------------------------------------------------------------------------------------------ == "
" ==  Paramter :
" ==      aLineLen       - 创建的字符串长度
" ==      aText          - 创建的字符串内容
" ==      aTextFill      - 除字符串内容外，其他空间需要填充的字符
" StringLine_L {{{ 
function! StringLine_L( aLineLen, aText, aTextFill )

    let s:sTextLen          = strdisplaywidth(a:aText)
    let s:sTextRemainedLen  = a:aLineLen - s:sTextLen
    let s:sTextRemainedLen  = s:sTextRemainedLen<=0?0:s:sTextRemainedLen

    let s:sString           = a:aText.repeat(a:aTextFill,s:sTextRemainedLen)
    echom s:sString

    return s:sString

endfunction 
" }}} End of func StringLine_L
" ================================================================================================ "

" ================================================================================================ "
" ==                                                                                            == " 
" ==         StringLine_R : 创建一个指定长度的字符串，其中的字符串采用右对齐                    == " 
" ==               RETURN : 创建完的字符串                                                      == "
" ==                                                                                            == "  
" == ------------------------------------------------------------------------------------------ == "
" ==   Paramter :
" ==       aLineLen       - 创建的字符串长度
" ==       aText          - 创建的字符串内容
" ==       aTextFill      - 除字符串内容外，其他空间需要填充的字符
" StringLine_R {{{ 
function! StringLine_R( aLineLen, aText, aTextFill )

    let s:sTextLen          = strdisplaywidth(a:aText)
    let s:sTextRemainedLen  = a:aLineLen - s:sTextLen
    let s:sTextRemainedLen  = s:sTextRemainedLen<=0?0:s:sTextRemainedLen

    let s:sString           = repeat(a:aTextFill,s:sTextRemainedLen).a:aText
    echom s:sString

    return s:sString

endfunction 
" }}} End of func StringLine_R
" ================================================================================================ "

" ================================================================================================ "
" ==                                          结束文件                                          == "
" ================================================================================================ "
