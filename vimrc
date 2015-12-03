" iwi's configuration

" Vundle configuration based on https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" airline plugin
Plugin 'bling/vim-airline'

" EditorConfig plugin
Plugin 'editorconfig/editorconfig-vim' 

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal

" see :h vundle for more details or wiki for FAQ

" python auto complete (not working)
let g:pydiction_location='~/.vim/bundle/pydiction/complete-dic'
let g:pdyction_menu_height = 4

" airline configuration
if !exists('g:airline_symbols')                                   
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶' "test, 

" EditorConfig settings
let g:EditorConfig_ma_line_indicator = "fill"




""" non-plugin configuration

" encoding
set encoding=utf-8
set fileencoding=utf-8

" sintax highlight
syntax enable

" colorscheme
colorscheme teaspoon

" spaces and tabs
set modeline
set tabstop=2  " number of visual spaces per tab
set expandtab  " tabs to spaces
set softtabstop=2  " number of spaces in tab when editing
 " Hitting F5 will clean out all trailing whitespace or tabs
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

set smartindent

" UI layout
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching parenthesis

" Search
set incsearch  " search as you type
set hlsearch  " highlight matches
nnoremap <leader><space> :nohlsearch<CR>  " turn off search highlight (leader is backslash)

" Folding
set foldenable  "enable folding
set foldlevelstart=10  " open all folds up to level 10 initially

" Moving
" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Splits
" move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" add splits below and to the right of the current one
set splitbelow
set splitright

" resizing splits
nnoremap <C-=> <C-W><C-=>

" jk is escape
inoremap jk <esc>

" R assignment fj is <-
inoremap fj  <-

" Autocomplete
imap <Tab> <C-P>
set complete=.,b,u,]
set wildmode=longest,list:longest
set wildignore+=*.git,*.jpg
