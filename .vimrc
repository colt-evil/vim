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
set guifont=Consolas:h14
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
if !exists("my_auto_commands_loaded")
let my_auto_commands_loaded = 1
" Large files are > 10M
" Set options:
" eventignore+=FileType (no syntax highlighting etc
" assumes FileType always on)
" noswapfile (save copy of file)
" bufhidden=unload (save memory when other file is viewed)
" buftype=nowritefile (is read-only)
" undolevels=-1 (no undo possible)
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile
autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
augroup END
endif
