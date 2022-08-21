set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

"makes Vundle use `git` instead default `https` when building absolute repo URIs
let g:vundle_default_git_proto = 'git'

Bundle 'gmarik/vundle'
Bundle "git://git.wincent.com/command-t.git"
Bundle "git://github.com/albemuth/snipmate.vim.git"
Bundle "git://github.com/altercation/vim-colors-solarized.git"
Bundle "git://github.com/godlygeek/tabular.git"
Bundle "git://github.com/kana/vim-smartinput.git"
Bundle "git://github.com/scrooloose/nerdcommenter"
Bundle "git://github.com/tpope/vim-fugitive.git"
Bundle "git://github.com/tpope/vim-surround.git"
Bundle "git://github.com/tpope/vim-unimpaired.git"
Bundle "git://github.com/tsaleh/vim-matchit.git"
Bundle "git://github.com/urso/dotrc.git"


Bundle 'leafgarland/typescript-vim'
Bundle "pangloss/vim-javascript"
Bundle 'peitalin/vim-jsx-typescript'
Bundle 'styled-components/vim-styled-components'
Bundle 'jparise/vim-graphql'
Bundle "mxw/vim-jsx"
Bundle 'neoclide/coc.nvim'


" github
Bundle "digitaltoad/vim-jade.git"
Bundle "junegunn/fzf"
Bundle "mattn/emmet-vim"
Bundle "tommcdo/vim-exchange"
Bundle "tpope/vim-sleuth"
Bundle "rking/ag.vim"
"Bundle "vim-scripts/paredit.vim"
Bundle "easymotion/vim-easymotion"
Bundle "prettier/vim-prettier"
Bundle 'octref/RootIgnore'
Bundle 'sheerun/vim-polyglot'
"Bundle 'dense-analysis/ale'
Bundle 'psf/black'

"colorschemes
Bundle "arcticicestudio/nord-vim"



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


endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

if has("gui_running")
  set guioptions=egmrt
  colo solarized
  set background=light
else
  set term=xterm
  set t_Co=256
  colo solarized
  set background=dark
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
nmap <leader>r :CommandTJump<CR>
nmap <leader>gb :Git blame<CR>

let g:jsx_ext_required = 0

" ctrlp.vim folder ignore

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"set wildignore+=js/*
set wildignore+=*.pyc
set wildignore+=*.class
set wildignore+=*.png
set wildignore+=*.jpg
set wildignore+=*.gif
set wildignore+=*/node_modules/*  

let g:CommandTWildIgnore=&wildignore . ",*/node_modules"

let g:slime_target = "tmux"

"au BufNewFile,BufRead *.py
    "\ set tabstop=4
    "\ set softtabstop=4
    "\ set shiftwidth=4
    "\ set textwidth=79
    "\ set expandtab
    "\ set autoindent
    "\ set fileformat=unix

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"set encoding=utf-8



nmap <leader>f :PrettierAsync<CR>

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



"function! ShowDocIfNoDiagnostic(timer_id)
  "if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    "silent call CocActionAsync('doHover')
  "endif
"endfunction

"function! s:show_hover_doc()
  "call timer_start(500, 'ShowDocIfNoDiagnostic')
"endfunction

"autocmd CursorHoldI * :call <SID>show_hover_doc()
"autocmd CursorHold * :call <SID>show_hover_doc()




