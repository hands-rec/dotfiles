if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'altercation/vim-colors-solarized'

"
" " You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
"
" " Required:
call neobundle#end()
"
" " Required:
" 
filetype plugin indent on
"
" " If there are uninstalled bundles found on startup,
" " this will conveniently prompt you to install them.
NeoBundleCheck


" NeoBundle 'altercation/vim-colors-solarized'
colorscheme solarized
set background=dark
" let g:solarized_termcolors=256
let g:solarized_termtrans=1


set hlsearch
set ignorecase
set smartcase
syntax on
set statusline=2
set number
set cursorline
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
autocmd FileTYpe ruby,erb,sh,css,sass,html setlocal tabstop=2 shiftwidth=2 softtabstop=2
