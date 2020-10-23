" =========================================================================================
" ==                                                                                     ==
" ==                                VIM 配置文件                                         ==
" ==                                                                                     ==
" =========================================================================================
" ==
" == Author      : vincent ma (vincent_ma0001@hotmail.com)
" == Version     : 1.0.0.0
" == Create      : 2020-09-08 20:09:14
" == Modify      : 2020-09-08 20:16:25
" == ChangeList  : 
" ==    -- 1.0.0.0 : 基础版本

" =========================================================================================
" vim配置文件目录变量
" let $vim_cfg_path="e:/MyWork/vm_vim"
let $vim_cfg_path="/vm/vm_vim"
"let $vim_work_path="e:/MyWork/vm_work"
let $vim_work_path="/vm/vm_work"
"let $vim_git_cmd="C:/Program Files/Git/bin/git.exe"
let $vim_git_cmd="/bin/git"


let $vim_ycm_cfg = $vim_cfg_path."/.ycm_extra_conf_win.py"
"let $vim_ycm_cfg = $vim_cfg_path."/.ycm_extra_confg.py"

" 加载配置文件
source $vim_cfg_path/vm_vimrc.vim

" =========================================================================================
" ==                                   结束文件                                          ==
" =========================================================================================
