" ================================================================================================ "
" ==                                                                                            == "
" ==                                     vim_cfg_map_kx.vim                                     == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == "
" ==   Version              : 0.0.0.0                                                           == "
" ==   Create Time          : 2020-11-16 12:34                                                  == "
" ==   Modify Time          : 2020-11-16 12:34                                                  == "
" ==   Issue  List          :                                                                   == "
" ==   Change List          :                                                                   == "
" ==     [    0.0.0.0     ] - Basic version                                                     == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Copyright(c) : This file has copyrighted by v.m., the all right will been reserved!      == "
" ==                                                                                            == "
" ================================================================================================ "

" =========================================================================================
" TODO 配置说明

" K9    -  将MyVim中的_vimrc文件复制到$vim目录中
map <K9> <ESC>:!copy "E:/MyWork/MyVim/_vimrc" "C:/Program Files (x86)/Vim/_vimrc"<CR>


" K0    - 执行python脚本
map <K0> <ESC>:!python %<CR>


" K2    -  重新加载_vimrc文件
map <K1> <ESC>:source /etc/vimrc<CR>

"
map <K4> <ESC>:YcmComplete GoToInclude<CR>
map <K5> <ESC>:YcmComplete GoToDeclaration<CR>
map <K6> <ESC>:YcmComplete GoToDefinition<CR>


" K7    -  重新定义PluginInstall命令
map <K7> <ESC>:PluginInstall<CR>
map <K8> <ESC>:PluginClean<CR>


" ================================================================================================ "
" ==                                        End of file                                         == "
" ================================================================================================ "
