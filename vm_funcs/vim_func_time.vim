" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma000!hotmail.com )                                == "
" ==   Version              : 1.0.0.0                                                           == "
" ==   Create Time          : 2020-09-14 22:53:03                                               == "
" ==   Modify Time          : 2020-11-08 08:45:32                                               == "
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
" 更新文件修改时间
" =========================================================================================

function! UpdateVimModifyTime()

    let s:sLineNum =line('.')

    execute '1,15s/Modify\sTime\s\{10}:\s[0-9]\{4}-[0-9]\{2}-[0-9]\{2}\s[0-9]\{2}:[0-9]\{2}:[0-9]\{2}/\=strftime("Modify Time          : %Y-%m-%d %H:%M:%S" )/e'
    echom   "Update Modify time finished!"

    execute s:sLineNum

endfunction

" =========================================================================================
" 重定义文件修改时间函数
" =========================================================================================

command! -nargs=0 UmTime :call UpdateVimModifyTime()

" =========================================================================================
" 在文件修改后自动对文件修改时间
" =========================================================================================

augroup ModityTime
    " this one is which you're most likely to use?
    autocmd!
    autocmd BufWritePre  *.vim,*.snippets,*.c,*.cpp,*.h,*.hpp,*.inl  call UpdateVimModifyTime()
    autocmd BufWritePost *  execute 'noh'
augroup end

"if exists(g:bUpdatetime)
"    finish
"else
"    let g:bUpdatetime = 1
"endif

" ================================================================================================ "
" ==                                          结束文件                                          == "
" ================================================================================================ "
