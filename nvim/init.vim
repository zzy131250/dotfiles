" general
let mapleader=','
set background=dark
set clipboard+=unnamedplus          " use system clipboard
set cursorline                      " highlight current line
set hidden                          " switch with buffer unsaved
set inccommand=nosplit              " show command effect on typing(nvim 0.1.7)
set list                            " show unvisible chars
set mouse=                          " disable mouse
set nohlsearch
set relativenumber number           " nice line number
set termguicolors                   " enable true color
syntax on

" panel config {

    " split panel
    map <Leader>_ <c-w>s                " horizontal split
    map <Leader>\| <c-w>v               " vertical split
    map <Leader>q <c-w>q                " quit current window

    " switch panel
    map <Leader>j <c-w>j
    map <Leader>k <c-w>k
    map <leader>h <c-w>h
    map <Leader>l <c-w>l

    " adjust panel size
    map <Leader>+ <c-w>+
    map <Leader>- <c-w>-

" } end panel config

" plugins
call plug#begin()

    " general
    Plug 'bling/vim-bufferline'         " bufferline
    Plug 'godlygeek/tabular'            " fast alignment
    Plug 'iCyMind/NeoSolarized'         " solarized color schema
    Plug 'kien/ctrlp.vim'               " file search
    Plug 'majutsushi/tagbar'            " class/function tree
    Plug 'mbbill/undotree'              " undo track
    Plug 'mileszs/ack.vim'              " content search
    Plug 'oblitum/rainbow'              " rainbow brackets
    Plug 'scrooloose/nerdcommenter'     " easy comment
    Plug 'scrooloose/nerdtree'          " file tree
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'tpope/vim-surround'           " change pair of brackets
    Plug 'vim-airline/vim-airline'      " status line
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-scripts/AutoClose'        " auto close brackets
    Plug 'vim-syntastic/syntastic'      " grammar check
    Plug 'Yggdroot/indentLine'          " auto indent

    " Python plugins
    Plug 'python-mode/python-mode', { 'for': 'python' }
    
call plug#end()

colorscheme NeoSolarized

" map ctrlp
map <Leader>p <c-p>

" map tagbar
map <Leader>t :TagbarToggle<CR>

" map undotree
map <Leader>u :UndotreeToggle<CR>
" undotree settings
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" map nerdtree
map <Leader>n :NERDTreeToggle<CR>

" syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

