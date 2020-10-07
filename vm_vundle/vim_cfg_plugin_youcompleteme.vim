" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == "
" ==   Version              : 1.0.0.0                                                           == "
" ==   Create Time          : 2020-09-24 20:52:27                                               == "
" ==   Modify Time          : 2020-10-04 11:27:03                                               == "
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

" 在ycm中不使用clang
let g:ycm_use_clangd = 1

" 设置YouCompleteMe设置目录
let g:ycm_global_ycm_extra_conf              = $vim_cfg_path."/.ycm_extra_conf.py"
"let g:ycm_global_ycm_extra_conf = $vim_cfg_path."/vm_plugins/vm_YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"

" 打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0
"
"使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tag_files = 0 

"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" 解决YouCompleteMe与UltiSnippet冲突问题
let g:ycm_key_list_select_completion         = []
let g:ycm_key_list_previous_completion       = []

"开启自动补全输入的最少字符数，默认2
let g:ycm_min_num_identifier_candidate_chars = 2


"是否使用Ycm自带语法检测
let g:ycm_show_diagnostics_ui                = 0

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments               = 0
" 补全功能在字符串中同样有效
let g:ycm_complete_in_strings                = 0

" Ycm Preview显示方式，1
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0

" Ycm调用按键
let g:ycm_key_invoke_completion                         = '<s-space>'
let g:ycm_key_list_stop_completion                      = ['<CR>']

" Ycm提示行最大数
let g:ycm_max_diagnostics_to_display = 10

let g:ycm_add_preview_to_completeopt                    =0
let g:ycm_show_diagnostics_ui                           =0
let g:ycm_server_log_level                              ='debug'
let g:ycm_collect_identifiers_from_comments_and_strings =1
"set completeopt                                         =menu,menuone

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'cpp' : ['->', '.', '::'],
  \   'python' : ['.'],
  \   'lua' : ['.', ':'],
  \ }
"let g:ycm_semantic_triggers = {
"            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
"            \ 'cs,lua,javascript': ['re!\w{2}'],
"            \ }

"let g:ycm_filetype_whitelist = { "*":1, }
let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ "inl":1,
            \ "python":1,
            \ }

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
