" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author         : v.m.  (vincent_ma0001@hotmail.com)                                      == "
" ==   Version        : 0.0.0.0                                                                 == "
" ==   Create Time    : 2020-09-10 21:47:55                                                     == "
" ==   Modify Time    : 2020-09-10 21:47:55                                                     == "
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

" ================================================================================================
" TODO 配置说明
" ================================================================================================

" 设置ultisnippet模板加载目录
let $VIM_PLUGIN_ULTISNIPPET = $vim_cfg_path."/vm_snips"
let g:UltiSnipsSnippetDirectories = [ $VIM_PLUGIN_ULTISNIPPET ]

" 设置触发点
let g:UltiSnipsExpandTrigger="<tab>"

" 使用 tab 切换下一个触发点，shift+tab 上一个触发点
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" 使用 UltiSnipsEdit 命令时垂直分割屏幕
let g:UltiSnipsEditSplit="vertical"


" ================================================================================================ "
" ==                                          结束文件                                          == "
" ================================================================================================ "
