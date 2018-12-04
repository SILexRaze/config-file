set number
syntax on
set background=dark
set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set nocompatible
set mouse=a
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
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
