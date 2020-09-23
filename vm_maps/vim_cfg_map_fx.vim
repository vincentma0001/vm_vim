" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author         : v.m.  (vincent_ma0001@hotmail.com)                                      == "
" ==   Version        : 0.0.0.0                                                                 == "
" ==   Create Time    : 2020-09-13 21:24:22                                                     == "
" ==   Modify Time    : 2020-09-13 21:24:22                                                     == "
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
" == 文件编码                                                                                   == "
" ================================================================================================ "
scriptencoding utf-8
" =========================================================================================
" F1 ~ F9 按键重定义

" ----------------------------------------------------------------------------------------- 
" ctrl+F1   -  在打开文件中跳转（向后）
map <C-F1> <ESC>:bp<CR>

" ctrl+F1   -  在打开文件中跳转（向前）
map <C-F2> <ESC>:bn<CR>

" =========================================================================================
" Alt+F1    -  关闭当前buffer
map <A-F1>  <ESC>:bd<CR>
" Alt+F2    -  重新加载_vimrc文件

" =========================================================================================
" F1        -  打开nerdtree目录窗口
map <F1>   <ESC>:exec( "NERDTree %:h" )<CR>


" ================================================================================================ "
" ==                                          结束文件                                          == "
" ================================================================================================ "
