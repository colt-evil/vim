set history=700
set nu
set autoread
let mapleader = ","
nmap <leader>w :w!<cr>
set ruler
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
syntax enable
colorscheme desert
set background=dark
set encoding=utf8

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set hidden
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set cmdheight=2
filetype on
set laststatus=2

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <F2> :Flisttoggle<CR> 
map <F3> :NERDTreeToggle<CR> 
map <C-B> :!php -l %<CR>
