
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



set nu

set t_Co=256
colo vibrantink 


