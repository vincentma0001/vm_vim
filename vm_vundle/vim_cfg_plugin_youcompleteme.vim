" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == "
" ==   Version              : 1.0.0.0                                                           == "
" ==   Create Time          : 2020-09-24 20:52:27                                               == "
" ==   Modify Time          : 2020-09-24 20:52:27                                               == "
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
let g:ycm_use_clangd = 0

" 设置YouCompleteMe设置目录
let g:ycm_global_ycm_extra_conf              = $vim_cfg_path."/.ycm_extra_conf.py"
"let g:ycm_global_ycm_extra_conf = $vim_cfg_path."/vm_plugins/vm_YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" 解决YouCompleteMe与UltiSnippet冲突问题
let g:ycm_key_list_select_completion         = []
let g:ycm_key_list_previous_completion       = []

"开启自动补全输入的最少字符数，默认2
let g:ycm_min_num_identifier_candidate_chars = 2

"关闭语法提示
let g:ycm_show_diagnostics_ui                = 0
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments               = 1
" 补全功能在字符串中同样有效
let g:ycm_complete_in_strings                = 1

" Ycm调用按键
let g:ycm_key_invoke_completion                         ='<c-z>'

let g:ycm_add_preview_to_completeopt                    =0
let g:ycm_show_diagnostics_ui                           =0
"let g:ycm_server_log_level                              ='info'
let g:ycm_collect_identifiers_from_comments_and_strings =1
"set completeopt                                         =menu,menuone

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'lua' : ['.', ':'],
  \ }
let g:ycm_semantic_triggers = {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }

let g:ycm_filetype_whitelist = { "*":1, }
"            \ "c":1,
"            \ "cpp":1,
"            \ "python":1,
"            \ }

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
