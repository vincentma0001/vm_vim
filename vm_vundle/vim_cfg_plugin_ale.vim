" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == "
" ==   Version              : 1.0.0.0                                                           == "
" ==   Create Time          : 2020-09-28 21:14:51                                               == "
" ==   Modify Time          : 2020-09-28 21:14:51                                               == "
" ==   Issue  List          :                                                                   == "
" ==   Change List          :                                                                   == "
" ==     [    0.0.0.0     ] - Basic version                                                     == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Copyright(c) : This file has copyrighted by v.m., the all right will been reserved!      == "
" ==                                                                                            == "
" ================================================================================================ "

" ================================================================================================ "
" ==  文件编码                                                                                  == "
" ------------------------------------------------------------------------------------------------ "
" [ 文件编码 ] {{{
scriptencoding utf-8
" }}}

" ================================================================================================ "
" == TODO : Configures                                                                          == "
" ================================================================================================ "
" [ Configures ] {{{

let g:ale_set_highlights = 1
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = 'w'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', 'W %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
"nmap sp <Plug>(ale_previous_wrap)
"nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
"nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
"nmap <Leader>d :ALEDetail<CR>
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}

" }}}
" ================================================================================================ "

" ================================================================================================ "
" ==  Usage :                                                                                   == "
" ------------------------------------------------------------------------------------------------ "
" [ Usage ] {{{
" }}}
" ================================================================================================ "
" ==                                   结束文件                                                 == "
" ================================================================================================ "