" reset augroup
augroup MyAutoCmd
    autocmd!
augroup END

let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME

" {{{ dein
let s:dein_dir = expand('$DATA/dein')

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

    " Auto Download
    if !isdirectory(s:dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif

" -------------------
" Vim Basic settings
" -------------------

" To specify a directory of backup files.
set backupdir=$HOME/vimbackup

" To work the clipboard and Windows
set clipboard=unnamed

" show ruler
set ruler

" To turn off the vi-compatible
set nocompatible

" To specify a directory of swap file
set directory=$HOME/vimbackup

" In the file being changed, to display the order files without saving.
set hidden

" Perform an incremental search
set incsearch

" To display the line number
set number

" The indentation of the new line, the same as the current line.
set autoindent

" When create a new line, perform automatic indentation
set smartindent

" tab setting
set softtabstop=2
set shiftwidth=2

" To specify a blank character instead of the tab
set expandtab

" Don't take over the comments to the next line
autocmd FileType * setlocal formatoptions-=ro

" set screen color 256
set t_Co=256
set termguicolors

" Setting color theme(hybrid or iceberg)
set background=dark

" Setting a grep search
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" Modify problem that backspace key cannot erase character
set backspace=indent,eol,start

" mouse
set mouse=a

" show space
set list

" To clear the search results of the highlights in the ESC key
nnoremap <ESC><ESC> :nohlsearch<CR>

"----------------------------------------------------
" Emacs key bind(Only input mode)
"----------------------------------------------------
" Command input interruption
imap <silent> <C-g> <ESC><ESC><ESC><CR>i

" Screen split
imap <silent> <C-x>1 <ESC>:only<CR>i
imap <silent> <C-x>2 <ESC>:sp<CR>i
imap <silent> <C-x>3 <ESC>:vsp<CR>i
imap <silent> <C-x>o <ESC><C-w>w<CR>i
imap <silent> <C-x>p <ESC><C-w>p<CR>i

" Delete, Edit
imap <C-k> <ESC>d$i
imap <C-y> <ESC>pi
imap <C-d> <ESC>xi

" Move
imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-b>  <Left>
imap <C-f>  <Right>
imap <C-n>  <Down>
imap <C-p>  <UP>

" File
imap <C-c><C-c>  <ESC>:qa<CR>
imap <C-x><C-c>  <ESC>:qa!<CR>
imap <C-w><C-w>  <ESC>:w<CR>
imap <C-x><C-w>  <ESC>:w!<CR>
imap <C-x><C-f>  <ESC>:e

" Error recovery
" imap <C-/> <ESC>ui

" Other
imap  <C-x><C-e>  :Explore<CR>

"----------------------------------------------------
" chnage command
"----------------------------------------------------
" escape insert mode
inoremap <silent> jj <ESC> 

