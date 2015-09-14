set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

"makes Vundle use `git` instead default `https` when building absolute repo URIs
let g:vundle_default_git_proto = 'git'

Bundle 'gmarik/vundle'
Bundle "git://git.wincent.com/command-t.git"
Bundle "git://github.com/albemuth/snipmate.vim.git"
Bundle "git://github.com/altercation/vim-colors-solarized.git"
Bundle "git://github.com/cakebaker/scss-syntax.vim.git"
Bundle "git://github.com/derekwyatt/vim-scala.git"
Bundle "git://github.com/godlygeek/tabular.git"
Bundle "git://github.com/jpalardy/vim-slime.git"
Bundle "git://github.com/kana/vim-smartinput.git"
Bundle "git://github.com/kchmck/vim-coffee-script"
Bundle "git://github.com/nanotech/jellybeans.vim.git"
Bundle "git://github.com/scrooloose/nerdcommenter"
Bundle "git://github.com/tpope/vim-fugitive.git"
Bundle "git://github.com/tpope/vim-surround.git"
Bundle "git://github.com/tpope/vim-unimpaired.git"
Bundle "git://github.com/tsaleh/vim-matchit.git"
Bundle "git://github.com/urso/dotrc.git"
Bundle 'git://github.com/maksimr/vim-jsbeautify.git'

" github
Bundle "digitaltoad/vim-jade.git"
Bundle "junegunn/fzf"
Bundle "mattn/emmet-vim"
Bundle "mxw/vim-jsx"
Bundle "pangloss/vim-javascript"
Bundle "tommcdo/vim-exchange"
Bundle "tpope/vim-sleuth"
Bundle "vim-scripts/DrawIt"
"Bundle "vim-scripts/VimClojure"
Bundle "guns/vim-clojure-static"
Bundle "walm/jshint.vim"
Bundle "wavded/vim-stylus"
Bundle "tpope/vim-fireplace"
Bundle "vim-scripts/paredit.vim"


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
  au BufNewFile,BufRead *.cljs set filetype=clojure


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
  colo solarized
  set background=light
endif

" Reselect visual block after indent:
"vnoremap < <gv
"vnoremap > >gv


" https://github.com/junegunn/fzf
"set rtp+=/usr/local/Cellar/fzf/0.9.11


" Make Y behave like other capitals
nnoremap Y y$

" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

let g:CommandTTraverseSCM = 'pwd'
set backupdir=~/vimswp
set directory=~/vimswp
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

nmap <leader>d :set background=light<CR>
nmap <leader>D :set background=dark<CR>

"Copy & paste to system clipboard with <Leader>p and <Leader>y:
"nmap <Leader>P "+P
"nmap <Leader>p "+p
"vmap <Leader>P "+P
"vmap <Leader>d "+d
"vmap <Leader>p "+p
"vmap <Leader>y "+y
nmap <leader>p :set paste<CR>
nmap <leader>P :set nopaste<CR>
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
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

nmap <leader>v :tabedit $MYVIMRC<CR>
nnoremap <Left>  : echoe "Use h"<CR>
nnoremap <Right> : echoe "Use l"<CR>
nnoremap <Up>    : echoe "Use k"<CR>
nnoremap <Down>  : echoe "Use j"<CR>

" =========================
" plugins
nmap <leader>n :NERDTree<CR>
nmap <leader>r :CommandTJump<CR>

let g:jsx_ext_required = 0

" ctrlp.vim folder ignore

"set wildignore+=js/*
set wildignore+=*.pyc
set wildignore+=*.class
set wildignore+=*.png
set wildignore+=*.jpg
set wildignore+=*.gif
set wildignore+=Store/build/*
set wildignore+=build/*
set wildignore+=target/*
set wildignore+=node_modules/*
set wildignore+=dist/*
set wildignore+=app/build/*
set wildignore+=app/bower_components/*
set wildignore+=bower_components/*
set wildignore+=coverage/*
set wildignore+=app/coverage/*
set wildignore+=Resources/*
set wildignore+=out/*

let g:slime_target = "tmux"

