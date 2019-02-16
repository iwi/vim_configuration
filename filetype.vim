scriptencoding utf-8

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set nocursorline
  set listchars=
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  set cursorline
  set listchars=tab:→\ ,trail:\ ,eol:¬
endfunction


augroup markdown
  autocmd! User GoyoEnter nested call <SID>goyo_enter()
  autocmd! User GoyoLeave nested call <SID>goyo_leave()
augroup END

augroup vimrc
  autocmd!

  " Save and load folds
  " autocmd BufWinLeave * silent! mkview
  " autocmd BufWinEnter * silent! loadview
  autocmd FileType vim setlocal foldmethod=marker
augroup END

if exists('did_load_filetypes')
  finish
endif
augroup filetypedetect
  autocmd!
  autocmd BufNewFile,BufRead *.md setfiletype markdown
  autocmd BufNewFile,BufRead *.markdown setfiletype markdown
  autocmd BufNewFile,BufRead *.mk setfiletype make
  autocmd BufNewFile,BufRead *.elm setfiletype elm

  autocmd BufRead,BufNewFile *.csv,*.dat setfiletype csv
  autocmd FileType dockerfile setlocal commentstring=#\ %s
  autocmd FileType text setlocal textwidth=78

"   " Enable file type detection.
"   " Use the default filetype settings, so that mail gets 'tw' set to 72,
"   " 'cindent' is on in C files, etc.
"   " Also load indent files, to automatically do language-dependent indenting.
"   filetype plugin indent on
augroup END

" if exists("did_load_csvfiletype")
"   finish
" endif
" let did_load_csvfiletype=1
" augroup filetypedetect
"   au! BufRead,BufNewFile *.csv,*.dat setfiletype csv
" augroup END
