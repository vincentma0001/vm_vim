" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma000!hotmail.com )                                == "
" ==   Version              : 1.0.0.0                                                           == "
" ==   Create Time          : 2020-09-14 12:04:43                                               == "
" ==   Modify Time          : 2020-10-31 13:37:58                                               == "
" ==   Issue  List          :                                                                   == "
" ==   Change List          :                                                                   == "
" ==     [    1.0.0.3     ] - 添加编码配置                                                      == "
" ==     [    1.0.0.2     ] - 添加其他配置（自动转换当前目录, 打开状态标尺, 备份方案, tab,      == "
" ==                          backspace 空格数）                                                == "
" ==     [    1.0.0.1     ] - 添加界面配置（显示行号，语法高亮，突出当前行）                    == "
" ==     [    0.0.0.0     ] - Basic version                                                     == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Copyright(c) : This file has copyrighted by v.m., the all right will been reserved!      == "
" ==                                                                                            == "
" ================================================================================================ "

" ================================================================================================ "
" ==  文件编码                                                                                  == "
" ================================================================================================ "
scriptencoding utf-8

" ================================================================================================ s
" ==  启动配置                                                                                  == "
" ================================================================================================ "
" 启动配置 {{{
" 启动时显示全屏
au GUIEnter * simalt ~x

" 去掉欢迎界面
autocmd GUIEnter * set shortmess=atI
"set shortmess=atI
" }}}
" ================================================================================================ "
"
" ================================================================================================ "
" ==  编码配置                                                                                  == "
" ================================================================================================ "
" 编码配置 {{{
" 查看现在文本的编码
set fileencodings=utf-8,chinese,latin-1

" 转换当前文本的编码为指定的编码
set fileencoding =utf-8

" 以指定的编码显示文本，但不保存到文件中
set encoding     =utf-8

" 解决consle输出乱码
set termencoding =utf-8

" 设置中文帮助
set helplang=cn

" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double

" 设置中文提示
language messages zh_CN.utf-8 

" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3

" 设置timeout
set timeoutlen=1 
set ttimeoutlen=0
" }}}
" ================================================================================================ "

" ================================================================================================ "
" ==  界面配置                                                                                  == "
" ================================================================================================ "
" 界面配置 {{{
" 自动语法高亮
syntax enable
syntax on

" 突出显示当前行
set cursorline


" 设置显示空白符
set endofline
set list
set listchars=tab:<->,eol:$,space:.,trail:<


" 高亮显示匹配的括号
"set showmatch

" 隐藏工具栏
set guioptions-=T

" 隐藏菜单栏
set guioptions-=m
" }}}
" ================================================================================================ "

" ================================================================================================ "
" ==  行控制                                                                                    == "
" ================================================================================================ "
" 行控制 {{{
" 关闭/打开扩展的功能 
"set compatible
set nocompatible

"set linebreak
"set textwidth=130

" 设置是否传行
set nowrap

" 设置行号
set number

" 打开状态栏标尺
set ruler

" 状态栏标尺格式
set rulerformat=%15(%c%V\ %p%%%)

" 带有如下符号的单词不要被换行分割
" set iskeyword+=_,$,@,%,#,-

" 字符间插入的像素行数目
" 增强模式中的命令行自动完成操作
" set wildmenu

" 使回格键（backspace）正常处理indent, eol, start等
" set backspace=2

" 允许backspace和光标键跨越行边界
" set whichwrap+=<,>,h,l
" set linespace=0

" }}}
" ================================================================================================ "

" ================================================================================================ "
" ==  鼠标配置                                                                                  == "
" ================================================================================================ "
" 鼠标配置 {{{
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" }}}

" ================================================================================================ "
" ==  缩进配置                                                                                  == "
" ================================================================================================ "
" 缩进配置 {{{
" 自动缩进
set autoindent

" 开启新行时使用智能自动缩进
set smartindent

" 根据文件中其他地方的缩进空格个数来确定一个tab是多少个空格
"set smarttab

" 使用C样式的缩进 
"set cindent 

" 将tab扩展/不扩展成空格
set expandtab
" set noexpandtab

" 设定 tab 长度为4
set tabstop=4

" 设定<<和>>命令, 自动缩进移动时的宽度为4
set shiftwidth=4

" 使得按退格键时可以一次删掉4个空格
set softtabstop=4

" 设置单行字符长度
set textwidth=100

" 设置VIM字符格式
set formatoptions=tcqwa2vblmMB1jp

" }}}

" ================================================================================================ "
" ==  搜索配置                                                                                  == "
" ================================================================================================ "
" 搜索配置 {{{
" 搜索时高亮显示被找到的文本
set hlsearch

" 输入搜索内容时就显示搜索结果
set incsearch

" 禁止在搜索到文件两端时重新搜索
set nowrapscan

" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase
" }}}

" ================================================================================================ "
" ==  折叠配置                                                                                  == "
" ================================================================================================ "
" 折叠配置 {{{
" 代码折叠

" 标记折叠
set foldenable

"设置折叠模式
set foldcolumn=1

"光标遇到折叠，折叠就打开
"set foldopen=all

"移开折叠时自动关闭折叠
"set foldclose=all
"zf zo zc zd zr zm zR zM zn zi zN

"依缩进折叠
"   manual  手工定义折叠
"   indent  更多的缩进表示更高级别的折叠
"   expr    用表达式来定义折叠
"   syntax  用语法高亮来定义折叠
"   diff    对没有更改的文本进行折叠
"   marker  对文中的标志折叠
set foldmethod=marker

"启动时不要自动折叠代码
set foldlevel=10

" 用空格键来开关折叠
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR> "
" }}}

" ================================================================================================ "
" ==  其他配置                                                                                  == "
" ================================================================================================ "
" 其他配置 {{{
"设定文件浏览器目录为当前目录
set bsdir=buffer

" 自动切换当前目录为当前文件所在的目录
set autochdir

" 覆盖文件时不备份
set nobackup
" set noswapfile

" 设置备份时的行为为覆盖
set backupcopy=yes

" 插入状态可以使用退格键和Delete键
set backspace=indent,eol,start

" 当文件在外部被修改，自动更新该文件
set autoread

" 有未保存的修改时切换缓冲区，此时的修改被自动保存
" set autowrite

" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hidden

" 设置魔术
set magic

" 使用系统剪贴板
set clipboard=unnamed

" 行内替换
" set gdefault

"}}}

" ================================================================================================ "

execute "noh"

" ================================================================================================ "
" ==                                        End of file                                         == "
" ================================================================================================ "
