
" https://github.com/junegunn/vim-plug/wiki/tutorial
" Plugins will be downloaded under the specified directory.
 call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'albemuth/snipmate.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'kana/vim-smartinput'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim'
Plug 'octref/RootIgnore'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'prettier/vim-prettier'
Plug 'psf/black'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
            
let g:coc_disable_transparent_cursor = 1

" ================================================================================
" ================================================================================


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

  "autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
  "autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

if has("gui_running")
  set guioptions=egmrt
  colo seoul256
  set background=light
else
  set term=xterm
  set t_Co=256
  colo seoul256
  set background=dark
endif


" Make Y behave like other capitals
nnoremap Y y$

" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %


let g:CommandTAcceptSelectionCommand = 'e'
let g:CommandTAcceptSelectionSplitCommand = 'sp'
let g:CommandTAcceptSelectionTabCommand = 'CommandTOpen tabe'
let g:CommandTAcceptSelectionVSplitCommand = 'vs'


let g:CommandTTraverseSCM = 'pwd'
let g:CommandTWildIgnore = &wildignore . ',myPattern""'



set backupdir=~/vimswp
set directory=~/vimswp
let mapleader = ","
set history=1000
set wildmenu

set laststatus=2
set ruler

" keep more context when cursor moves outside of viewport
set scrolloff=3
set tabstop=2
set shiftwidth=2
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

nmap <leader>p :set paste<CR>
nmap <leader>P :set nopaste<CR>
nmap <leader><leader>p :set nopaste<CR>
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

" change the default EasyMotion shading to something more readable with
" Solarized
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment


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
nmap <leader>gb :Git blame<CR>

let g:jsx_ext_required = 0


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set wildignore+=*.pyc
set wildignore+=*.class
set wildignore+=*.png
set wildignore+=*.jpg
set wildignore+=*.gif
set wildignore+=*/node_modules/*  

let g:CommandTWildIgnore=&wildignore . ",*/node_modules"


nmap <leader>f :PrettierAsync<CR>
nmap <leader>t :GFiles<CR>
nmap <leader>b :Buffers<CR>

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>dc :CocCommand<CR>
inoremap <silent><expr> <C-i> coc#refresh()

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
"inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              "\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> K :call CocAction('doHover')<CR>

nnoremap <C-p> :GFiles<Cr>


