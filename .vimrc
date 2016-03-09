set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" ============= Vundle plugins =============
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" UI
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'

" Utils
Plugin 'tpope/vim-fugitive'

" Syntax
Plugin 'scrooloose/syntastic'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'keith/tmux.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" =============== NERDTree ================
" map <C-n> :NERDTreeToggle<CR>
map <C-n> <plug>NERDTreeTabsToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ================ General ================
set history=200
set backspace=indent,eol,start
set showcmd
set nowrap
set nostartofline

" Optimizations
set ttyfast
set timeoutlen=50

" Undos
set undofile
set undolevels=5000
set undodir=$HOME/.vim_undo_files

" Mouse mode
set mouse=a
set ttymouse=xterm2
set cursorline

" Disable backup
set noswapfile
set nobackup
set nowb

" Error messages
set noerrorbells
autocmd FocusLost * silent! wa

" ========== Indents and whitespace ==========
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set smartindent
set copyindent
set preserveindent

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Remove extra whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" ================ Search =================
set smartcase
set ignorecase
set incsearch
set hlsearch

" ============== UI settings ==============
set background=dark
syntax on
set showmatch
set scrolloff=4
hi Normal ctermbg=NONE

" Split settings for panes
set splitright
set splitbelow

" Line numbering
set number relativenumber
autocmd InsertEnter * :set number norelativenumber
autocmd InsertLeave * :set number relativenumber
highlight LineNr ctermfg=grey ctermbg=NONE

" ========== Syntastic settings ===========
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_check_on_open=1
"let g:syntastic_check_on_wq=0

" =========== Airline settings ============
set laststatus=2
set noshowmode
set notitle
