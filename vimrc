"""" iwi's configuration
""

" Vundle configuration based on https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep Plugin commands between vundle#begin/end.
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"" Helpers
Plugin 'tpope/vim-sensible'
"Plugin 'Shougo/vimproc.vim' { 'do': 'make'}
"Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kshenoy/vim-signature'

" colorschemes
Plugin 'junegunn/limelight.vim'
Plugin 'arnau/teaspoon.vim'
Plugin 'arnau/stonespoon.vim'
Plugin 'chriskempson/tomorrow-theme', {'rtp': '/vim'}
Plugin 'joshdick/onedark.vim'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/Wombat'
Plugin 'zaki/zazen'
Plugin 'kamwitsta/mythos'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'xero/blaquemagick.vim'
Plugin 'jacoborus/tender.vim'

"" Languages
Plugin 'sheerun/vim-polyglot'
Plugin 'junegunn/goyo.vim', {'for': 'markdown'}
Plugin 'chrisbra/csv.vim'
Plugin 'docker/docker', { 'rtp': '/contrib/syntax/vim' }

" N-vim-r
Plugin 'jalvesaq/Nvim-R'
let R_tmux_split = 1
imap <C-P> <Plug>RCompleteArgs

" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin on  "this is for nvim-r and csv.vim to work
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
" see :h vundle for more details or wiki for FAQ

source ~/.vim/basics.vim

