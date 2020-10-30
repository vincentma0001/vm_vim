" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == "
" ==   Version              : 1.0.0.0                                                           == "
" ==   Create Time          : 2020-10-30 10:22                                                  == "
" ==   Modify Time          : 2020-10-30 10:22                                                  == "
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
" == ------------------------------------------------------------------------------------------ == "
" [ 文件编码 ] {{{
scriptencoding utf-8
" }}}

" ================================================================================================ "
" == TODO : Configures                                                                          == "
" ================================================================================================ "
" [ Configures ] {{{

" 设定windows系统中ctags程序的位置
"if      MySys() == "windows"
"    let Tlist_Ctags_Cmd = 'ctags'
" 设定windows系统中ctags程序的位置
"elseif  MySys() == "linux"
let Tlist_Ctags_Cmd = '/usr/bin/ctags' 

set tags=$vm_tools/vtags

" 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File                   = 1
" 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow                 = 1
" 在右侧窗口中显示taglist窗口
let Tlist_Use_Right_Window                = 1
" 使taglist以tag名字进行排序
" let Tlist_Sort_Typei="name"
"缺省情况下，在双击一个tag时，才会跳到该tag定义的位置，如果你想单击tag就跳转
let Tlist_Use_SingleClick                 = 1
" 在启动VIM后，自动打开taglist窗口
let Tlist_Auto_Open                       = 0
" 选择了tag后自动关闭taglist窗口
let Tlist_Close_On_Select                 = 0
" 使taglist只显示当前文件tag，其它文件的tag都被折叠起来
let Tlist_File_Fold_Auto_Close            = 1
" 在使用:TlistToggle打开taglist窗口时，如果希望输入焦点在taglist窗口中
let Tlist_GainFocus_On_ToggleOpen         = 0
" taglist始终解析文件中的tag，不管taglist窗口有没有打开
let Tlist_Process_File_Always             = 1
" 设置taglist窗口的高度
"let Tlist_WinHeight = 100
" 设置taglist窗口的宽度
let Tlist_WinWidth                        = 40
" taglist窗口横向显示
"let Tlist_Use_Horiz_Window                = 1

" }}}
" ================================================================================================ "

" ================================================================================================ "
" ==  Usage :                                                                                   == "
" == ------------------------------------------------------------------------------------------ == "
" [ Usage ] {{{
" }}}
" ================================================================================================ "
" ==                                   结束文件                                                 == "
" ================================================================================================ "
