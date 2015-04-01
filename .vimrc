set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'

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

map <C-n> :NERDTreeToggle<CR>

colorscheme Benokai
" Workaround for PuTTY color scheme

" Tabs and whitespace
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set smartindent
set copyindent
set preserveindent
autocmd BufWritePre * :%s/\s\+$//e

" Search
set smartcase
set ignorecase
set incsearch
set hlsearch

" UI settings
set background=dark
syntax on
set nostartofline
set mouse=a
set laststatus=2
hi Normal ctermbg=NONE

" Line numbering
highlight LineNr ctermfg=grey ctermbg=NONE
set number relativenumber
autocmd InsertEnter * :set number norelativenumber
autocmd InsertLeave * :set number relativenumber

" etc
set noswapfile
set nobackup
set nowb

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_check_on_open=1
"let g:syntastic_check_on_wq=0
