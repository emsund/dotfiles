" .vimrc file set up Mar 2017 on T510 Arch installation

runtime! archlinux.vim

" Set the theme
""""""""""""""""""""""""""""""""""""""""""

" (I was using Molokai on Win10, but jellybeans looks nicer now. Will have
" to re-evaluate once I edit some code.)
colorscheme jellybeans


" Set Airline (status-line plugin) options
""""""""""""""""""""""""""""""""""""""""""

" populate the g:airline_symbols dir with powerline symbols (see airline wiki)
let g:airline_powerline_fonts = 1

" Fix the lag when switching (in terminal) from Insert to Normal mode
set ttimeoutlen=50

" Show the Airline status bar all the time (not just after splitting a window)
set laststatus=2


" Misc
" """"""""""""""""""""""""""

" Turn on syntax highlighting
syntax on

" Turn on auto-indentation, continuations of comment lines, etc
filetype plugin indent on

set nocompatible

" Pathogen 
""""""""""""""""""""""""
" Pathogen plugin manager/installer. Extract plugins to ~/.vim/bundle/ to
" install
execute pathogen#infect('~/.vim/bundle/{}')

" Hardmode plugin
""""""""""""""""""""""""""""""
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Line Numbering
""""""""""""""""""""""
set relativenumber
set number

