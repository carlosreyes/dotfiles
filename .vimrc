set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-surround.git'
Plugin 'itchyny/lightline.vim'
Plugin 'Raimondi/delimitMate.git'

Bundle 'christoomey/vim-tmux-navigator'

" Colors
Bundle 'Solarized'
Bundle 'xoria256.vim'
Bundle 'Mustang2'
Bundle 'molokai'
Bundle 'Wombat'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
call vundle#end()
filetype plugin indent on

" lightline settings:
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
if !has('gui_running')
  set t_Co=256
endif

" caps lock esc
au VimEnter * silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

" switch ; and :
noremap ; :
noremap : ;

noremap Y y$

" line wrapping & friendly movement between display lines
set breakindent
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

set backspace=2
syntax on
colorscheme delek
filetype indent on
set autoindent
set number
set hidden
set background=dark
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set ai
set si
set noshowmode
