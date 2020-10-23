" ================================================================================================ "
" ==                                                                                            == "
" ==                                        VIM 配置文件                                        == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == "
" ==   Version              : 1.0.0.0                                                           == "
" ==   Create Time          : 2020-09-23 09:17:15                                               == "
" ==   Modify Time          : 2020-10-23 11:53:09                                               == "
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
let g:gitgutter_git_executable = $vim_git_cmd

let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_max_signs = -1   " default value (otherwise)

let g:gitgutter_terminal_reports_focus = 0

" Vim-gitgutter to set up  any mappings at all or not
"let g:gitgutter_map_keys = 0
let g:gitgutter_map_keys = 1

"nmap <Plug>(gt) <Plug>(GitGutterToggle)
"nmap <Plug>(]h) <Plug>(GitGutterNextHunk)
"nmap [h <Plug>(GitGutterPrevHunk)

" }}}
" ================================================================================================ "

" ================================================================================================ "
" ==  Usage :                                                                                   == "
" ------------------------------------------------------------------------------------------------ "
" [ Usage ] {{{
" Toggles:
" 1.Turn vim-gitgutter off and on (defaults to on)
"    turn off with : GitGutterDisable
"    turn on with  : GitGutterEnable
"    toggle with   : GitGutterToggle.
"
" 2.To toggle vim-gitgutter per buffer
"   turn off with  : GitGutterBufferDisable
"   turn on with   : GitGutterBufferEnable
"   toggle with    : GitGutterBufferToggle
"
" 3.You can turn the signs on and off (defaults to on)
"   turn on with   : GitGutterSignsEnable
"   turn off with  : GitGutterSignsDisable
"   toggle with    : GitGutterSignsToggle.
"
" 3.And you can turn line highlighting on and off (defaults to off)
"   turn on with   : GitGutterLineHighlightsEnable
"   turn off with  : GitGutterLineHighlightsDisable
"   toggle with    : GitGutterLineHighlightsToggle.
"
" 4.Turn line number highlighting on and off (defaults to off) 
"   turn on with   : GitGutterLineNrHighlightsEnable
"   turn off with  : GitGutterLineNrHighlightsDisable
"   toggle with    : GitGutterLineNrHighlightsToggle.

" Hunks:
" You can jump between hunks:
"   jump to next hunk (change)     : ]c
"   jump to previous hunk (change) : [c
" To set your own mappings for these, for example ]h and [h:
"   nmap ]h <Plug>(GitGutterNextHunk)
"   nmap [h <Plug>(GitGutterPrevHunk)
"
" You can stage or undo an individual hunk when your cursor is in it:
"   stage the hunk with             <Leader>hs
"   undo it with                    <Leader>hu
" To set your own mappings for these, for example if you prefer g-based maps
"   nmap ghs    <Plug>(GitGutterStageHunk)
"   nmap ghu    <Plug>(GitGutterUndoHunk)

" A hunk text object is provided which works in visual and operator-pending modes.
"   ic  operates on all lines in the current hunk.
"   ac  operates on all lines in the current hunk and any trailing empty lines.
" To re-map these, for example to ih and ah:
"   omap ih <Plug>(GitGutterTextObjectInnerPending)
"   omap ah <Plug>(GitGutterTextObjectOuterPending)
"   xmap ih <Plug>(GitGutterTextObjectInnerVisual)
"   xmap ah <Plug>(GitGutterTextObjectOuterVisual)

" Folding:
"    Use the GitGutterFold command to fold all unchanged lines, leaving just the hunks visible. Use zr 
" to unfold 3 lines of context above and below a hunk.

"    Use gitgutter#fold#foldtext() to augment the default foldtext() with an indicator of whether the folded 
" lines have been changed.
"   set foldtext=gitgutter#fold#foldtext()

"  For a closed fold with changed lines:
"   Default foldtext():         +-- 45 lines: abcdef
"   gitgutter#fold#foldtext():  +-- 45 lines (*): abcdef


" }}}
" ================================================================================================ "
" ==                                   结束文件                                                 == "
" ================================================================================================ "
