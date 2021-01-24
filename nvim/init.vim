" vim-plug
" ---
" Plugin directory
call plug#begin('~/.vim/plugged')

" Place plugins here
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mcchrish/nnn.vim'
" Plug 'duff/vim-scratch'
" Plug 'Yggdroot/indentLine'
" Plug 'sickill/vim-pasta'
" Plug 'vim-ruby/vim-ruby'
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-rails'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Init plugin system
call plug#end()
" ---

" Normal settings
syntax on
set bg=dark
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
set autoread
set laststatus=2
set statusline+=%{fugitive#statusline()}
set nocompatible
set backspace=indent,eol,start
" set t_Co=256 " TERM instead
set noshowmode " using default show mode instead
set ttimeoutlen=10
set timeout timeoutlen=2000
" set pastetoggle=<F2> " not sure if needed?
set splitbelow
set splitright
filetype on
filetype indent on
filetype plugin on
let mapleader=","
nnoremap <leader>q <C-W>c
nnoremap gb :bn<CR>
nnoremap gB :bp<CR>
autocmd BufEnter * setlocal hidden
set nohlsearch

" NeoVim settings
set guicursor="a:block"
let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/bin/python3'
let g:ruby_host_prog='/usr/bin/ruby'
let g:node_host_prog='/usr/bin/neovim-node-host'
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd TermOpen * startinsert

" NERDTree
let NERDTreeShowHidden=1
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTree<CR>

" Ctrl-P
let g:ctrlp_map='<leader>t'
let g:ctrlp_max_files=200000
if executable('rg')
  set grepprg=rg\ --vimgrep
  set grepformat^=%f:%l:%c:%m
  let g:ctrlp_user_command='rg --files --color=never %s'
  let g:ctrlp_use_caching=0
  let g:ctrlp_working_path_mode='ra'
  let g:ctrlp_switch_buffer='et'
else
  let g:ctrlp_clear_cache_on_exit=0
endif

" indentLine
let g:indentLine_enabled=1
