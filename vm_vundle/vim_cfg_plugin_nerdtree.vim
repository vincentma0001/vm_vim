" =========================================================================================
" ==                                                                                     ==
" ==                                  NerdTree 树状目录配置                              ==
" ==                                                                                     ==
" =========================================================================================
" ==
" == Author      : vincent ma (vincent_ma0001@hotmail.com)
" == Version     : 1.0.0.0
" == Create      : 2020-09-08 10:14:42
" == Modify      : 2020-09-08 19:53:48
" == ChangeList  : 
" ==    -- 1.0.0.0 : 基础版本
" ==
" =========================================================================================

" =========================================================================================

" 在vim打开一个目录时启动nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"let g:NERDTreeDirArrowExpandable = '►'
"let g:NERDTreeDirArrowCollapsible = '▼'

let NERDTreeAutoCenter=1

" 显示行号
let NERDTreeShowLineNumbers=1

" 是否显示隐藏文件
let NERDTreeShowHidden=1

" 设置宽度
let NERDTreeWinSize=30

" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "★",
    \ "Staged"    : "+",
    \ "Untracked" : "☆",
    \ "Renamed"   : "≈",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "×",
    \ "Dirty"     : "√",
    \ "Clean"     : "○",
    \ 'Ignored'   : "◇",
    \ "Unknown"   : "⊙"
    \ }

" =========================================================================================
" ==                                   结束文件                                          ==
" =========================================================================================
