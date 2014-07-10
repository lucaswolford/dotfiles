set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'

Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-dispatch'
Bundle 'thoughtbot/vim-rspec'
Bundle 'vim-ruby/vim-ruby'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pivotal/jasmine'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'slim-template/vim-slim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Plugin 'szw/vim-ctrlspace'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = "\<Space>"
"let base16colorspace=256  "Access colors present in 256 colorspace
set <cr>=OM             "Fix problem with enterkey on my laptop

color molokai

" color column
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

syntax on
set nocompatible  " We don't want vi compatibility.
set history=256   " Number of things to remember in history.
set ruler         " Ruler on
set nu            " Line numbers on
set autoread      " This should reload the file automatically
set incsearch
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
set showmatch     " Show matching brackets.
set mat=5         " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set list listchars=tab:>-,trail:.
set hlsearch

" Bind CTRL-L to clear search
nnoremap <silent> <leader>l :<C-u>nohlsearch<CR><C-l>

" fix to make autoclose and endwise play nicely together
autocmd FileType ruby,eruby :let g:AutoCloseExpandEnterOn=""

" Jump to tests
nnoremap <Leader>t :Runittest<CR>
nnoremap <Leader>tt :Rfunctionaltest<CR>

let g:rspec_command = 'Dispatch spec {spec}'

" Run Tests
nnoremap <F5> :call RunCurrentSpecFile()<CR>
nnoremap <F4> :call RunNearestSpec()<CR>
nnoremap <F3> :call RunLastSpec()<CR>

" Git
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>ga :Git add -A<CR>
nnoremap <Leader>gc :Gcommit<CR>

"Manage buffers
nnoremap <Leader>b  :bd<CR>
nnoremap <Leader>ba :%bd<CR>
nnoremap <Leader>c  :close<CR>
nnoremap <Leader>n  :tabnew<CR>
nnoremap <Leader>p  :CtrlP<CR>

" folding
nnoremap <Leader><Space> za

"window commands
nnoremap <Leader>s  :sp<CR>
nnoremap <Leader>v  :vsp<CR>
nnoremap <Leader>w  :wincmd w<CR>
nnoremap <Leader>r  :wincmd r<CR>
nnoremap <Leader>kk :wincmd K<CR>
nnoremap <Leader>hh :wincmd H<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>

"tab movement
noremap <S-l> gt
noremap <S-h> gT

"movement
nnoremap ( ^
vnoremap ( ^
nnoremap ) $
vnoremap ) $

" Move entire line up or down
nnoremap <silent> <S-j> :m +1<CR>
nnoremap <silent> <S-k> :m -2<CR>
vnoremap <silent> <S-j> :m +1<CR>
vnoremap <silent> <S-k> :m -2<CR>

nnoremap <Leader>erc :e ~/.vimrc<CR>

" swtich colon and semicolon
nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" F6 to clean tabs and trailing whitespace
nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" F8 to highlight all occurances of a word
nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" clone paragraph
noremap cp yap<S-}>p

" Align current paragraph
noremap <leader>a =ip

" Apply macros
nnoremap Q @q
vnoremap Q :norm @q<cr>

" CtrlSpace Colors
hi CtrlSpaceSelected term=reverse ctermfg=187   guifg=#d7d7af ctermbg=23    guibg=#005f5f cterm=bold gui=bold
hi CtrlSpaceNormal   term=NONE    ctermfg=244   guifg=#808080 ctermbg=232   guibg=#080808 cterm=NONE gui=NONE
hi CtrlSpaceSearch   ctermfg=220  guifg=#ffd700 ctermbg=NONE  guibg=NONE    cterm=bold    gui=bold
hi CtrlSpaceStatus   ctermfg=230  guifg=#ffffd7 ctermbg=234   guibg=#1c1c1c cterm=NONE    gui=NONE
