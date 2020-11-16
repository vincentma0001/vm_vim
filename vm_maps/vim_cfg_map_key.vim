" ================================================================================================ "
" ==                                                                                            == "
" ==                                    vim_cfg_map_key.vim                                     == "
" ==                                                                                            == "
" == ------------------------------------------------------------------------------------------ == "
" ==                                                                                            == "
" ==   Author               : v.m. ( vincent_ma0001@hotmail.com )                               == "
" ==   Version              : 0.0.0.0                                                           == "
" ==   Create Time          : 2020-11-16 12:33                                                  == "
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
vmap <C-x> D<CR>
vmap <C-c> y<CR>

" CTRL-X and SHIFT-Del are Cut 
vnoremap <C-X> "+x 
vnoremap <S-Del> "+x 
   
" CTRL-C and CTRL-Insert are Copy 
vnoremap <C-C> "+y 
vnoremap <C-Insert> "+y 

" CTRL-A is Select all 
noremap <C-A> gggH<C-O>G 
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G 
cnoremap <C-A> <C-C>gggH<C-O>G 
onoremap <C-A> <C-C>gggH<C-O>G 
snoremap <C-A> <C-C>gggH<C-O>G 
xnoremap <C-A> <C-C>ggVG 

map ggt <ESC>:GitGutterToggle<CR>
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)


" ================================================================================================ "
" ==                                        End of file                                         == "
" ================================================================================================ "
