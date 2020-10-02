" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author         : v.m. (vincent_ma0001@hotmail.com)                                       == "
" ==   Version        : 0.0.0.0                                                                 == "
" ==   Create Time    : 2020-09-12 14:56:00                                                     == "
" ==   Modify Time    : 2020-09-12 14:56:00                                                     == "
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

" ================================================================================================ "
" == Syntastic : Configures                                                                     == "
" ================================================================================================ "
" [ Configures ] {{{

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black

let g:syntastic_check_on_open             = 1
let g:syntastic_check_on_wq               = 0
let g:syntastic_enable_highlighting       = 1
let g:syntastic_always_populate_loc_list  = 1
let g:syntastic_auto_loc_list             = 1
let g:syntastic_loc_list_height           = 5
"let g:syntastic_cpp_include_dirs         = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 0
let g:syntastic_cpp_check_header          = 1
"let g:syntastic_cpp_compiler              = 'clang++'
let g:syntastic_cpp_compiler_options      = '-std=c++11 -lstdc++'

" set error or warning signs
let g:syntastic_error_symbol              = 'E'
let g:syntastic_warning_symbol            = 'W'
"whether to show balloons
let g:syntastic_enable_balloons           = 1

" 指定特定语言类型检测
let g:syntastic_python_checkers     = ['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers       = ['tidy', 'jshint']

" to see error location list
"function! ToggleErrors()
"    let old_last_winnr = winnr('$')
"    lclose
"    if old_last_winnr == winnr('$')
"        " Nothing was closed, open syntastic error location panel
"        Errors
"    endif
"endfunction
"nnoremap <Leader>s :call ToggleErrors()<cr>
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>
" }}}
" ================================================================================================ "

" ================================================================================================ "
" == Usage :                                                                                    == "
" ================================================================================================ "
" [ Usage ] {{{
" }}}
" ================================================================================================ "

" ================================================================================================ "
" ==                                   结束文件                                                 == "
" ================================================================================================ "
