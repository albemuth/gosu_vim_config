
" Pathogen bundle manager
" filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
 
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

let mapleader = ","
set history=1000
set wildmenu


" keep more context when cursor moves outside of viewport
set scrolloff=3


set nu

set t_Co=256
colo vibrantink 

set ignorecase 
set smartcase

set title


" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

" Scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
" edit vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>

