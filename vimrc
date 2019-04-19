set number
syntax on
set background=dark
set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set nocompatible
set mouse=a
set laststatus=2
set statusline+=%F
set statusline+=%=
set statusline+=%c,
set statusline+=%l
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
noremap <S-s> :call ToggleHiddenAll()<CR>
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
" plugin for js alignment
autocmd BufNewFile,BufRead *.js Plug 'junegunn/vim-easy-align'
autocmd BufNewFile,BufRead *.json Plug 'leshill/vim-json'
call plug#end()
inoremap ( ()<left>
inoremap { {}<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap [ []<left>
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
