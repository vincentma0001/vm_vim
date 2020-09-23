" =========================================================================================
" ==                                                                                     ==
" ==                                Airline 状态栏配置                                   ==
" ==                                                                                     ==
" =========================================================================================
" ==
" == Author      : vincent ma (vincent_ma0001@hotmail.com)
" == Version     : 1.0.0.0
" == Create      : 2020-09-08 10:07:45
" == Modify      : 2020-09-08 19:51:43
" == ChangeList  : 
" ==    -- 1.0.0.0 : 基础版本
" ==
" =========================================================================================

" =========================================================================================
" Plugin airline 配置说明

" 永远显示状态栏
set laststatus=2 

" 
set t_Co=256

if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif


let g:airline_theme                             = 'molokai'

let g:airline_powerline_fonts                   = 1

let g:airline#extensions#tabline#enabled        = 1    "Smarter tab line: 显示窗口tab和buffer

let g:airline#extensions#tabline#left_sep       = '►'  "separater

let g:airline#extensions#tabline#left_alt_sep   = '►'  "separater

let g:airline#extensions#tabline#formatter      = 'unique_tail'
 
" 关闭空白符检测
let g:airline#extensions#whitespace#enabled     = 0

"let g:airline_left_sep = ''

"let g:airline_left_alt_sep = ''

"let g:airline_right_sep = ''

"let g:airline_right_alt_sep = ''

"let g:airline_symbols.linenr = ''

"let g:airline_symbols.readonly = ''

"let g:airline_symbols.branch = ''

" 设置支持airline的字体
set guifont=Fira_Mono_for_Powerline:h12:b


" =========================================================================================
" ==                                   结束文件                                          ==
" =========================================================================================
