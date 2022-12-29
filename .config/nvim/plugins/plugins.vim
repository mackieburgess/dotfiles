" leader mapping to space: this is done at the start of the config so it
" applies to mappings everywhere
nmap <space> <nop>
vmap <space> <nop>
let mapleader = "\<space>"

" vim-plug is installed automatically
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" plug initialisation
call plug#begin('~/.config/nvim/autoload/plugged')

  " light stuff
  Plug 'wellle/targets.vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-repeat'
  Plug 'tommcdo/vim-lion'
  let g:lion_squeeze_spaces = 1

  " colours
  Plug 'sainnhe/sonokai'

  " telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " telescope plugins
  Plug 'nvim-telescope/telescope-file-browser.nvim'
  Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

  " treesitter: syntax highlighting and language parsing
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'nvim-treesitter/playground'
  Plug 'windwp/nvim-ts-autotag'

  " lspconfig: language server
  Plug 'neovim/nvim-lspconfig'

call plug#end()
