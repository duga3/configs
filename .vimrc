"Intentions
set smartindent
set smarttab

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif
set nocompatible
set incsearch
set autoindent
set ruler
set cursorline
set showmode
set hlsearch
set wildmenu
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.

" GUI Settings {
    " GVIM- (here instead of .gvimrc)
    if has('gui_running')
        set guioptions-=T           " remove the toolbar
        set lines=40                " 40 lines of text instead of 24,
        "set transparency=5          " Make the window slightly transparent
    else
        set term=builtin_ansi       " Make arrow and other keys work
    endif
" }
set showcmd
filetype plugin indent on
set ofu=syntaxcomplete#Complete
autocmd FileType text setlocal textwidth=80
syntax enable
set expandtab
set shiftwidth=2
set ignorecase
set smartcase
set number
" set noeol
" Vim-LaTeX
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set iskeyword+=:
set textwidth=80
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf;dvi'
let g:Tex_UseMakefile=0
let g:Tex_AutoFolding = 0

" TagList
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
set tags=./tags;

"clearing highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>

autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" Start python on F5
autocmd FileType python map <F5> :w<CR>:!python2.7 "%"<CR>

" Extension for prolog
autocmd BufRead,BufNewFile *.pl set filetype=prolog

" Octave syntax
augroup filetypedetect
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END 
