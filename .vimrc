set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'fatih/vim-go'
call vundle#end()            " required
filetype plugin indent on    " required

syn on
colors ron

set ts=2 sw=2 et ai
set hlsearch
set ruler

autocmd Filetype gitcommit set tw=72
autocmd Filetype gitcommit set nocindent
autocmd Filetype gitcommit set noautoindent
autocmd Filetype gitcommit set nosmartindent

highlight WhiteSpaceEOL ctermbg=red guibg=red
match WhiteSpaceEOL /\s\+$/
autocmd WinEnter * match WhiteSpaceEOL /\s\+$/

nnoremap \tp :set invpaste paste?<CR>
nmap <F7> \tp
imap <F7> <C-O>\tp
set pastetoggle=<F7>

set viminfo='100,h
set clipboard=unnamed
