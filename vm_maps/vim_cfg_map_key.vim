" =========================================================================================
" ==                                                                                     ==
" ==                           VIM 按键重定义配置文件                                    ==
" ==                                                                                     ==
" =========================================================================================
" ==
" == Author      : vincent ma (vincent_ma0001@hotmail.com)
" == Version     : 1.0.0.0
" == Create      : 2020-09-08 10:17:30
" == Modify      : 2020-09-09 09:23:56
" == ChangeList  : 
" ==    -- 1.0.0.0 : 基础版本
" ==
" =========================================================================================

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
" =========================================================================================
" ==                                   结束文件                                          ==
" =========================================================================================
