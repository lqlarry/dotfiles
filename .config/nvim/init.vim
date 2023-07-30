set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gko/vim-coloresque'
Plug 'raimondi/delimitmate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
Plug 'plasticboy/vim-markdown'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

colorscheme night-owl 
:noremap <F4> :set hlsearch! hlsearch?<CR>
map <C-t> :tabnew 
map <C-s> :colorscheme 
map <silent> <C-f> :Files<CR>
nnoremap Y Y
noremap bs i#!/usr/bin/env bash<ESC>o
" Remap :xa to :x
command! -nargs=* -range -bang Xa execute 'xall' | echo 'xall' | execute 'qa!' <bang>0 <line1> <line2>

set cursorline
set cursorlineopt=number
autocmd ColorScheme * highlight CursorLineNr cterm=bold term=bold gui=bold
set background=dark
set encoding=utf-8
set expandtab
set hlsearch
let mapleader = " "
set mouse=a
set noerrorbells
set nofoldenable
set nowrap
set number
set ruler
set showcmd
set smartcase
set smartindent
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab
set termguicolors

let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'


let g:python3_host_prog = expand('~/Miniconda/envs/neovim/bin/python3.7')

" nerdtree
" Open NERDTree on the right side by default
" let g:NERDTreeWinPos = "right"
" Automatically open NERDTree on startup
" autocmd VimEnter * NERDTree
" Open NERDTree with hidden files by default
let g:NERDTreeShowHidden = 1
" Switch to the NERDTree window
nnoremap <C-n> :NERDTreeFocus<CR>
" Switch back to the main NeoVim window
nnoremap <C-m> :wincmd w<CR>
" Close NeoVim and NERDTree simultaneously
nnoremap <Leader>q :NERDTreeClose<CR>:qall<CR>
" Save and close NeoVim and NERDTree simultaneously
nnoremap <Leader>x :NERDTreeClose<CR>:xa<CR>

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
