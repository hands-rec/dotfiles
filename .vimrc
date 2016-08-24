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

" NeoBundle 'vim-scripts/taglist.vim'

NeoBundle 'vim-airline/vim-airline'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'mileszs/ack.vim'

"NeoBundle 'rhysd/accelerated-jk'


" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:

filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" NeoBundle 'altercation/vim-colors-solarized'
colorscheme solarized
set background=dark
" let g:solarized_termcolors=256
let g:solarized_termtrans=1

" vim-scripts/taglist.vim
"nnoremap <silent> <C-T> :TlistToggle<CR>
"nnoremap <silent> <space>tt   :TlistToggle<CR>
"let Tlist_GainFocus_On_ToggleOpen = 1

nnoremap <silent> <C-y> :tabnew<CR>
nnoremap <silent> <C-l> :tabnext<CR>
nnoremap <silent> <C-h> :tabprevious<CR>

nnoremap <silent> <Space>n :tabnew %<CR>

nnoremap <F3> <C-w><C-]><C-w>T

"nnoremap [Tab] <Nop>
"nmap t [Tab]
"nnoremap <silent> [Tab]t :tabnew<CR>
"nnoremap <silent> [Tab]c :tablast <bar> tabnew<CR>
"nnoremap <silent> [Tab]x :tabclose<CR>
"nnoremap <silent> [Tab]n :tabnext<CR>
"nnoremap <silent> [Tab]p :tabprevious<CR>
"
"nnoremap <silent> [Tab]j <C-w>j
"nnoremap <silent> [Tab]k <C-w>k
"nnoremap <silent> [Tab]l <C-w>l
"nnoremap <silent> [Tab]h <C-w>h
"
"nnoremap <silent> [Tab]n :tabnew %<CR>

" ctrlp
" history
nnoremap <silent> <C-N> :CtrlPMRUFiles<CR>
nnoremap <silent> <C-I> :CtrlPBuffer<CR>
if executable('ag')
  "let g:ctrlp_use_caching=0
  let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
  "let g:ctrlp_user_command = 'ag %s -l'
endif
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_max_files  = 500000
let g:ctrlp_max_depth = 50
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'

" tpope/vim-fugitive
let g:airline_section_a = airline#section#create(['mode','','branch'])
let g:airline_branch_prefix = '    ¬'

" scrooloose/nerdtree
"nnoremap :tree :NERDTreeToggle


" NeoBundle 'Shougo/unite.vim'
nnoremap <silent> <Space>uf :<C-u>Unite file<CR>
nnoremap <silent> <Space>ud :<C-u>UniteWithBufferDir -buffer-name=files file file/new<CR>
nnoremap <silent> <Space>ub :<C-u>Unite buffer<CR>
nnoremap <silent> <Space>uo :Unite outline<CR>

" NeoBundle 'rhysd/accelerated-jk'
"let g:accelerated_jk_acceleration_table = [35,15]
"nmap j <Plug>(accelerated_jk_gj)
"nmap k <Plug>(accelerated_jk_gk)
"
augroup QuickFixCmd
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup END

inoremap <silent> <C-E> <END>

inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

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

set backspace=indent,eol,start

set laststatus=2

autocmd BufNewFile,BufRead *.t      set filetype=perl

autocmd FileTYpe ruby,erb,sh,css,sass,html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileTYpe perl setlocal tabstop=4 shiftwidth=4 softtabstop=4

" set mouse=a

set fileencodings=utf-8,euc-jp
