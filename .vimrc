set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-surround.git'
Plugin 'itchyny/lightline.vim'
Plugin 'Raimondi/delimitMate.git'
Plugin 'flazz/vim-colorschemes'
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fholgado/minibufexpl.vim'

call vundle#end()
filetype plugin indent on

" lightline settings:
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night_Eighties',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
if !has('gui_running')
  set t_Co=256
endif
" gets rid of mode status, as lightline takes care of that
set noshowmode

"ranger as file browser
function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    exec 'silent !ranger --choosefiles=' . shellescape(temp)
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>


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
colorscheme Tomorrow-Night-Eighties
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
