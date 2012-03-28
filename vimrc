set rtp+=~/.vim/vundle.git/ 
 call vundle#rc()

"makes Vundle use `git` instead default `https` when building absolute repo URIs
let g:vundle_default_git_proto = 'git'

Bundle 'gmarik/vundle'
Bundle "git://git.wincent.com/command-t.git"
Bundle "git://github.com/albemuth/snipmate.vim.git"
Bundle "git://github.com/altercation/vim-colors-solarized.git"
Bundle "git://github.com/godlygeek/tabular.git"
Bundle "git://github.com/jelera/vim-javascript-syntax.git"
Bundle "git://github.com/kchmck/vim-coffee-script"
Bundle "git://github.com/kien/ctrlp.vim.git"
Bundle "git://github.com/mattn/zencoding-vim.git"
Bundle "git://github.com/nanotech/jellybeans.vim.git"
Bundle "git://github.com/nathanaelkane/vim-indent-guides.git"
Bundle "git://github.com/scrooloose/nerdcommenter"
Bundle "git://github.com/scrooloose/nerdtree"
"Bundle "git://github.com/scrooloose/syntastic.git"
Bundle "git://github.com/tpope/vim-fugitive.git"
Bundle "git://github.com/tpope/vim-surround.git"
Bundle "git://github.com/tpope/vim-unimpaired.git"
Bundle "git://github.com/tsaleh/vim-matchit.git"
Bundle "git://github.com/urso/dotrc.git"
Bundle "git://github.com/vim-scripts/AutoClose.git"
Bundle "git://github.com/vim-scripts/mru.vim.git"
Bundle "git://github.com/jpalardy/vim-slime.git"
Bundle "git://github.com/pangloss/vim-javascript.git"

if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
 
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  " Set json syntax
  autocmd BufNewFile,BufRead *.json set ft=javascript

endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

if has("gui_running")
    set guioptions=egmrt
	colo solarized 
    set background=dark
else	
	set term=xterm
	set t_Co=256
	colo jellybeans 
endif

" Reselect visual block after indent:
vnoremap < <gv 
vnoremap > >gv 

" Make Y behave like other capitals
nnoremap Y y$

" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

let mapleader = ","
set history=1000
set wildmenu

set laststatus=2 
set ruler

" keep more context when cursor moves outside of viewport
set scrolloff=3
set tabstop=4
set shiftwidth=4
set expandtab

set nu
set ignorecase 
set smartcase
set title


" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.


" Scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>


" Bubble single lines
nmap <C-K> [e
nmap <C-J> ]e
" Bubble multiple lines
vmap <C-K> [egv
vmap <C-J> ]egv

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Intuitive backspacing in insert mode
set backspace=indent,eol,start


" Source the vimrc file after saving it
" if has("autocmd")
"   autocmd bufwritepost .vimrc source $MYVIMRC
" endif

nmap <leader>v :tabedit $MYVIMRC<CR>
""nnoremap <Left>  : echoe "Use h"<CR>
""nnoremap <Right> : echoe "Use l"<CR>
""nnoremap <Up>    : echoe "Use k"<CR>
""nnoremap <Down>  : echoe "Use j"<CR>

" =========================
" plugins
nmap <leader>n :NERDTree<CR>
nmap <leader>f :MRU<CR>
nmap <leader>r :CommandTJump<CR>

" ctrlp.vim folder ignore

"set wildignore+=js/*
set wildignore+=*.class
