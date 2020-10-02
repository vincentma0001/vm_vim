" =========================================================================================
" ==                                                                                     ==
" ==                            Vim K1~K9 按键重定义                                     ==
" ==                                                                                     ==
" =========================================================================================
" ==
" == Author      : vincent ma (vincent_ma0001@hotmail.com)
" == Version     : 1.0.0.0
" == Create      : 2020-09-08 09:56:03
" == Modify      : 2020-09-08 19:59:50
" == ChangeList  : 
" ==    -- 1.0.0.0 : 基础版本
" ==
" =========================================================================================

" =========================================================================================
" TODO 配置说明

" K9    -  将MyVim中的_vimrc文件复制到$vim目录中
map <K9> <ESC>:!copy "E:/MyWork/MyVim/_vimrc" "C:/Program Files (x86)/Vim/_vimrc"<CR>


" K0    - 执行python脚本
map <K0> <ESC>:!python %<CR>


" K2    -  重新加载_vimrc文件
map <K1> <ESC>:source $vim/_vimrc<CR>

"
map <K4> <ESC>:YcmComplete GoToInclude<CR>
map <K5> <ESC>:YcmComplete GoToDeclaration<CR>
map <K6> <ESC>:YcmComplete GoToDefinition<CR>


" K7    -  重新定义PluginInstall命令
map <K7> <ESC>:PluginInstall<CR>
map <K8> <ESC>:PluginClean<CR>


" =========================================================================================
" ==                                   结束文件                                          ==
" =========================================================================================
