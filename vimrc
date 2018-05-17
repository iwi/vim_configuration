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
" Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'klen/python-mode'
" Plugin 'vim-pandoc/vim-pandoc'
" Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'davidhalter/jedi-vim'

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
" Plugin 'roxma/vim-hug-neovim-rpc'
" Plugin 'roxma/nvim-completion-manager'
Plugin 'jalvesaq/Nvim-R'
let R_tmux_split = 1

" Plugin 'gaalcaras/ncm-R'

" Markdown visualiser
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

Plugin 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }




" Vim 8 only

" ale config
filetype off

let &runtimepath.=',~/.vim/bundle/ale'

filetype plugin on
silent! helptags ALL

let g:ale_sign_column_always = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
" %{ALEGetStatusLine()}
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
" let g:ale_open_list = 1
" Pick and choose linters
let g:ale_linters = {
\   'python': ['pylint'],
\   'text': [],
\   'vim': [],
\}

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
