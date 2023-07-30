set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gko/vim-coloresque'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'dracula/vim'

call plug#end()

colorscheme night-owl 
map <silent> <C-n> :NERDTreeFocus<CR>
:noremap <F4> :set hlsearch! hlsearch?<CR>
map <C-t> :tabnew 
map <C-s> :colorscheme 
nnoremap Y Y
nnoremap bs i#!/bin/bash/<ESC>o

set number
set mouse=a
set ruler
set showcmd
set background=dark
set nowrap
set smartcase
set hlsearch
set noerrorbells
set termguicolors
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set termguicolors

let g:python3_host_prog = expand('~/Miniconda/envs/neovim/bin/python3.7')
let g:Hexokinase_highlighters = ['backgroundfull']
let g:NERDTreeQuitOnOpen = 1
let NERDTreeMapOpenInTab='\r'
