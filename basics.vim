""" non-plugin configuration

let g:maplocalleader = ","

" encoding - review needed
" set fileencoding=utf-8

" colorscheme
set t_Co=256
set termguicolors
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum
" colorscheme atom-dark-256
colorscheme molokai

" spaces and tabs
set tabstop=2  " number of visual spaces per tab
set expandtab  " tabs to spaces
set softtabstop=2  " number of spaces in tab when editing
set linespace=1
set shiftwidth=2
set smartindent

" Hitting F5 will clean out all trailing whitespace or tabs
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" UI layout
set number  " show line numbers
set visualbell t_vb=
"set paste  " it seems this deactivates other stuff!
set relativenumber
set showcmd  " show command in bottom bar
set cursorline  " highlight current line
set wildmenu  " visual autocomplete for command menu
set showmatch  " highlight matching parenthesis
set colorcolumn=80
set textwidth=79
set ttyfast
set ttymouse=xterm

" Backup (avoid vim files)
set nobackup
set nowritebackup

set directory=/tmp

" Search
set incsearch  " search as you type
set hlsearch  " highlight matches
nnoremap <leader><space> :nohlsearch<CR>  " turn off search highlight (leader is backslash)

" fixes crazy regex style to what I expect to be
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v

" Folding
set foldenable  " enable folding
set foldlevelstart=10  " open all folds up to level 10 initially
noremap <Leader>fm  gqap

vnoremap < <gv
vnoremap > >gv

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nnoremap <Leader>gg :GitGutter<CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
noremap <Leader>e :edit <C-R>=expand("%:p:h") . "/" <CR>
noremap <Leader>vs :vsplit <C-R>=expand("%:p:h") . "/" <CR>
noremap <Leader>sp :split <C-R>=expand("%:p:h") . "/" <CR>"

noremap <Leader>te :tabedit <C-R>=expand("%:p:h") . "/" <CR>

" Moving
" move vertically by visual line
noremap j gj
noremap k gk

" Splits
" move between splits
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

" add splits below and to the right of the current one ---- review
set splitbelow
set splitright

" resizing splits
set modifiable
nnoremap <C-=> <C-W><C-=>

" jk is escape
inoremap jk <esc>

let R_assign_map = "<M-->"
inoremap <LocalLeader>-  <- 
inoremap <LocalLeader>m %>%

" mouse to go to position
set mouse=a

" Autocomplete
set complete=.,b,u,]  "review
set wildmode=list:longest,list:full
set wildignore+=*.git,*.jpg,*.swp
set completeopt=menu,preview

" Display extra white space
set showbreak=..
set list listchars=tab:→\ ,trail:\ ,eol:¬


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶' "test,


let g:jedi#completions_command = "<leader>m"  " default was C-<space>
let g:jedi#popup_on_dot = 0  " the period autocomplete didn't work well


" Mappings

nnoremap <LocalLeader>f :Files<CR>
nnoremap <LocalLeader>b :Buffers<CR>
nnoremap <LocalLeader>s :Ag<CR>


" comments for R
autocmd FileType r setlocal commentstring=#\ %s


"spell check
" set spell spelllang=en_gb
hi SpellBad cterm=inverse
