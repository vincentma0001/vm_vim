" ================================================================================================ "
" ==                                                                                            == "
" ==                                      Vundle 配置文件                                       == "
" ==                                                                                            == "
" ------------------------------------------------------------------------------------------------ "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == "
" ==   Version              : 1.0.0.19                                                          == "
" ==   Create Time          : 2020-09-23 13:04:34                                               == "
" ==   Modify Time          : 2020-10-26 17:29:08                                               == "
" ==   Issue  List          :                                                                   == "
" ==   Change List          :                                                                   == "
" ==     [    1.0.0.19    ] - 添加syntastic(语法检测)                                           == "
" ==     [    1.0.0.18    ] - 添加CppHighlight(Cpp语法高亮)                                     == "
" ==     [    1.0.0.17    ] - 添加YouCompleteMe(文本补全)                                       == "
" ==     [    1.0.0.16    ] - 添加multiple cursors(操作多个目标)                                == "
" ==     [    1.0.0.15    ] - 添加fzf（快速查找）                                               == "
" ==     [    1.0.0.14    ] - 添加tabular(字符对齐)                                             == "
" ==     [    1.0.0.13    ] - 添加Template(文件模板)                                            == "
" ==     [    1.0.0.12    ] - 添加Ultisnippet(定义补全)                                         == "
" ==     [    1.0.0.11    ] - 添加a.vim(C/H文件转换)                                            == "
" ==     [    1.0.0.10    ] - 添加nerdtree(显示目录树)                                          == "
" ==     [    1.0.0.9     ] - 添加indentLine(显示字符对齐)                                      == "
" ==     [    1.0.0.8     ] - 添加TaskList(TODO列表支持)                                        == "
" ==     [    1.0.0.7     ] - 添加fugitive(Git操作支持)                                         == "
" ==     [    1.0.0.6     ] - 添加gitgutter(Git状态支持)                                        == "
" ==     [    1.0.0.5     ] - 添加Airline(漂亮的状态栏)                                         == "
" ==     [    1.0.0.4     ] - 添加vim-coloresque(以背景方式显示颜色编码)                        == "
" ==     [    1.0.0.3     ] - 添加molokaii(配色方案)                                            == "
" ==     [    1.0.0.2     ] - 添加vim-one(配色方案)                                             == "
" ==     [    1.0.0.1     ] - 添加solarized(配色方案)                                           == "
" ==     [    0.0.0.0     ] - 基础版本                                                          == "
" ==   Note           :                                                                         == "
" ==     以下范例用来支持不同格式的插件安装.                                                    == "
" ==        1. Github上的插件                                                                   == "
" ==           格式: Plugin '用户名/插件仓库名'                                                 == "
" ==           实例: Plugin 'tpope/vim-fugitive'                                                == "
" ==        2. 来自 http://vim-scripts.org/vim/scripts.html 的插件                              == "
" ==           格式: Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户  == "
" ==                 名可以省略                                                                 == "
" ==           实例: Plugin 'L9'                                                                == "
" ==        3. 由Git支持但不再github上的插件仓库                                                == "
" ==           格式: Plugin 'git clone 后面的地址'                                              == "
" ==           实例: Plugin 'git://git.wincent.com/command-t.git'                               == "
" ==        4. 本地的Git仓库(例如自己的插件)                                                    == "
" ==           格式: Plugin 'file:///+本地插件仓库绝对路径'                                     == "
" ==           实例: Plugin 'file:///home/gmarik/path/to/plugin'                                == "
" ==        5. 插件在仓库的子目录中. 正确指定路径用以设置runtimepath. 以下范例插件在            == "
" ==           sparkup/vim目录下Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}                      == "
" ==        6. 如果已经安装过这个插件，可利用以下格式避免命名冲突                               == "
" ==           Plugin 'ascenator/L9', {'name': 'newL9'}                                         == "
" ==                                                                                            == "
" ------------------------------------------------------------------------------------------------ "
" ==                                                                                            == "
" ==   Copyright(c) : This file has copyrighted by v.m., the all right will been reserved!      == "
" ==                                                                                            == "
" ================================================================================================ "

" ================================================================================================ "
" == 文件编码                                                                                   == "
" ================================================================================================ "
scriptencoding utf-8

" -----------------------------------------------------------------------------------------
" 设置插件路径
let $vim_cfg_plugin_path  =$vim_cfg_path."/vm_plugins"

" -----------------------------------------------------------------------------------------
" 去除VI一致性,必须要添加
set nocompatible

" 必须要添加
filetype off

" 设置包括vundle和初始化相关的runtime path" 去除VI一致性,必须要添加
set rtp+=$vim_cfg_plugin_path/Vundle.vim

" ================================================================================================ "
" ==  加载插件                                                                                  == "
" ================================================================================================ "
" [ 加载插件 ] {{{
call vundle#begin($vim_cfg_plugin_path)

    " 管理Vundle (插件管理)
    Plugin 'VundleVim/Vundle.vim'

" ================================================================================================ "
" ==  配色方案                                                                                  == "
" ================================================================================================ "
" [ 配色方案 ] {{{

    " 管理Solarized (配色方案)
    Plugin 'altercation/vim-colors-solarized'

    " 安装vim_one (配色方案)
    " Plugin 'rakr/vim-one'

    " 安装molokai (配色方案)
    Plugin 'tomasr/molokai'

    " 安装coloresque (以背景颜色显示颜色代码)
    Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'

" }}}
" ================================================================================================ "


" ================================================================================================ "
" ==  界面扩展                                                                                  == "
" ================================================================================================ "
" [ 界面扩展 ] {{{

    " 安装airline (个性化状态栏)
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    " 安装nerdtree(树状目录)
    Plugin 'scrooloose/nerdtree'
    Plugin 'Xuyuanp/nerdtree-git-plugin'

    " 安装TaskList (todo 列表)
    Plugin 'vim-scripts/TaskList.vim'


" }}}
" ================================================================================================ "

" ================================================================================================ "
" ==  文档界面扩展                                                                              == "
" ================================================================================================ "
" [ 文档界面扩展 ] {{{

    " 安装indentLin(可视化对齐)
    Plugin 'Yggdroot/indentLine'

    " 安装syntastic (静态代码分析)
"   Plugin 'vim-syntastic/syntastic'
"   Plugin 'myint/syntastic-extras'

    " 安装ale(代码检测)
    Plugin 'dense-analysis/ale'

" }}}
" ================================================================================================ "

" ================================================================================================ "
" ==  文档补全                                                                                  == "
" ================================================================================================ "
" [ 文档补全 ] {{{

    " 安装YouCompleteMe(文档补全)
    Plugin 'Valloric/YouCompleteMe'
"    Plugin 'rdnetto/YCM-Generator'
    Bundle 'git@github.com:rdnetto/YCM-Generator.git'

    " 安装template(文件模板)
    Plugin 'aperezdc/vim-template'

    " 安装ultisnips (代码片段快速补全). vim-snippets (github中以定义好的一些代码片段)
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'reconquest/vim-pythonx'

" }}}
" ================================================================================================ "


" ================================================================================================ "
" ==  功能扩展                                                                                  == "
" ================================================================================================ "
" [ 功能扩展 ] {{{

    " 安装Git操作支持
    Plugin 'tpope/vim-fugitive'

    " 安装Git支持
    Plugin 'airblade/vim-gitgutter'

    " 安装a.vim提供在.c文件与.h文件之间切换
    Plugin 'vim-scripts/a.vim'

    " 字符对齐
    Plugin 'godlygeek/tabular'

    " 多匹配操作
    " Plugin 'terryma/vim-multiple-cursors'

    " Cpp语法高亮
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'sheerun/vim-polyglot'

" }}}
" ================================================================================================ "


" ================================================================================================ "
" ==  其他插件                                                                                  == "
" ================================================================================================ "
" [ 其他插件 ] {{{

    " 安装Mark.vim
    " Plugin 'inkarkat/vim-mark'


    " 管理fzf(快速查询)
    Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plugin 'junegunn/fzf.vim'

" }}} ![ 其他插件 ]
" ================================================================================================ "

call vundle#end()
" }}}
" ================================================================================================ "

" 必须 加载vim自带和插件相应的语法和文件类型相关脚本
filetype plugin indent on


" ================================================================================================ "
" ==  Plugins 参数设置                                                                          == "
" ================================================================================================ "
" [ Plugins 参数设置 ] {{{

" solarized 配色方案
"source $vim_cfg_path_vundle_vundle/vim_cfg_plug_solarized.vim

" molokai 配色方案
source $vim_cfg_path_vundle/vim_cfg_plugin_molokai.vim

" ------------------------------------------------------------------------------------------------ 
" Airline 配置方案
source $vim_cfg_path_vundle/vim_cfg_plugin_airline.vim 

" ------------------------------------------------------------------------------------------------ 
" nerdtree 树状目录窗口
source $vim_cfg_path_vundle/vim_cfg_plugin_nerdtree.vim

" ------------------------------------------------------------------------------------------------ 
" TaskList todo任务列表窗口
source $vim_cfg_path_vundle/vim_cfg_plugin_tasklist.vim

" ------------------------------------------------------------------------------------------------ "
" indentLine 可视化对齐
source $vim_cfg_path_vundle/vim_cfg_plugin_indentLine.vim

" ------------------------------------------------------------------------------------------------ "
" syntastic 语法检测
"source $vim_cfg_path_vundle/vim_cfg_plugin_syntastic.vim

" ------------------------------------------------------------------------------------------------ "
" ale 语法检测
source $vim_cfg_path_vundle/vim_cfg_plugin_ale.vim

" ------------------------------------------------------------------------------------------------ 
" Snippet 代码自动化
source $vim_cfg_path_vundle/vim_cfg_plugin_snippet.vim

" ------------------------------------------------------------------------------------------------ "
" YouCompleteMe 文本自动补全
source $vim_cfg_path_vundle/vim_cfg_plugin_youcompleteme.vim

" ------------------------------------------------------------------------------------------------ "
" template 文件模板
source $vim_cfg_path_vundle/vim_cfg_plugin_template.vim 

" ------------------------------------------------------------------------------------------------ "
" Git操作支持
source $vim_cfg_path_vundle/vim_cfg_plugin_fugitive.vim

" ------------------------------------------------------------------------------------------------ "
" Git状态支持
source $vim_cfg_path_vundle/vim_cfg_plugin_gitgutter.vim

" ------------------------------------------------------------------------------------------------ "
" a.vim C文件切换
source $vim_cfg_path_vundle/vim_cfg_plugin_a.vim

" ------------------------------------------------------------------------------------------------ "
" multiple cursors 操纵多个目标
" source $vim_cfg_path_vundle/vim_cfg_plugin_multiple_cursors.vim

" ------------------------------------------------------------------------------------------------ "
"  CPP语法高亮
source $vim_cfg_path_vundle/vim_cfg_plugin_cpphighlight.vim

" ------------------------------------------------------------------------------------------------ "
" Fzf 文件快熟查找
source $vim_cfg_path_vundle/vim_cfg_plugin_fzf.vim

" }}} ![ Plugins 参数设置 ]
" ================================================================================================ "

" ================================================================================================ "
" ==  Usage :                                                                                   == "
" ------------------------------------------------------------------------------------------------ "
" [ Usage ] {{{ /*

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" }}} */
" ================================================================================================ "
" ==                                          结束文件                                          == "
" ================================================================================================ "

