execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible  " We don't want vi compatibility.
set cf            " Enable error files & error jumping.
set history=256   " Number of things to remember in history.
set ruler         " Ruler on
set nu            " Line numbers on
set autoread      "this should reload the file automatically
let mapleader = ","

" Formatting (some of these are for coding in C and C++)
set nocp incsearch
set cinwords=if,else,while,do,for,switch,case

set smartindent
set autoindent
set smarttab
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set expandtab

set foldmethod=indent "fold based on indent
set foldnestmax=10    "deepest fold level
set nofoldenable      "dont fold by default
set foldlevel=1       "this is just what i use

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set list listchars=tab:>-,trail:.

set hlsearch
" Bind CTRL-L to clear search
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

" fix to make autoclose and endwise play nicely together
autocmd FileType ruby,eruby :let g:AutoCloseExpandEnterOn=""

" Set delay for leader key commands
set timeoutlen=250

set guifont=Droid\ Sans\ Mono\ 8

"color settings
"let g:rehash256=1
set t_Co=256
colorscheme molokai
hi Search cterm=NONE ctermfg=yellow ctermbg=NONE

" CUSTOM KEY BINDINGS
nnoremap <Leader>s :Runittest<CR>
nnoremap <Leader>fs :Rfunctionaltest<CR>

"Set shell to pickup RVM
"set shell=/bin/bash\ --rcfile\ ~/.bash_profile\
" Rspec.vim mappings
let g:rspec_command = "!spec {spec}"

nnoremap <Leader>b  :bd<CR>
nnoremap <Leader>ba :%bd<CR>
nnoremap <Leader>c  :s/^/#/<CR>
nnoremap <Leader>cc :s/#//<CR>
nnoremap <Leader>n  :tabnew<CR>
nnoremap <Leader>p  :CtrlP<CR>
nnoremap <Leader>tt :call RunCurrentSpecFile()<CR>
nnoremap <Leader>ts :call RunNearestSpec()<CR>
nnoremap <Leader>tl :call RunLastSpec()<CR>
nnoremap <Leader>ta :! clear ; rake spec<CR>
nnoremap <Leader>gg :! clear ; grunt jasmine<CR>


nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gc :Gcommit<CR>

"window commands
nnoremap WS  :sp<CR>
nnoremap WV  :vsp<CR>
nnoremap W+  :wincmd =<CR>
nnoremap WW  :wincmd w<CR>
nnoremap WR  :wincmd r<CR>
nnoremap WX  :wincmd x<CR>
nnoremap WJ  :wincmd j<CR>
nnoremap WK  :wincmd k<CR>
nnoremap WKK :wincmd K<CR>
nnoremap WH  :wincmd h<CR>
nnoremap WHH :wincmd H<CR>
nnoremap WL  :wincmd l<CR>

"movement
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $

nnoremap <silent> <C-j> :m +1<CR>
nnoremap <silent> <C-k> :m -2<CR>
vnoremap <silent> <C-j> :m +1<CR>
vnoremap <silent> <C-k> :m -2<CR>

nnoremap <Leader>erc :e ~/.vimrc<CR>

" Quick code folding
nnoremap <Space> za

" swtich colon and semicolon
nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" Map :w to ^s
noremap  <silent> <C-W> :update<CR>
vnoremap <silent> <C-W> <C-C>:update<CR>
inoremap <silent> <C-W> <C-O>:update<CR>

" F5 to clean tabs and trailing whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" F8 to highlight all occurances of a word
nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

nnoremap <C-i> <C-a>
nnoremap <C-d> <C-x>

" are we insert or normal
set cul
:autocmd InsertEnter * set nocul
:autocmd InsertLeave * set cul

" fix problem with enterkey on my laptop
set <cr>=OM
set colorcolumn=80
