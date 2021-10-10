set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

set number
set relativenumber
set noswapfile
set hidden
set nolazyredraw
set mouse=
set visualbell
set autoread
set colorcolumn=80

set scrolloff=8
set undolevels=5000

set foldmethod=manual
set diffopt=filler,vertical

set listchars=tab:•·,trail:·,extends:❯,precedes:❮,nbsp:×

set showcmd
set noshowcmd noruler

set nowrap
set textwidth=0

" Indentation
set noexpandtab
set tabstop=2
set softtabstop=0
set shiftwidth=2
set shiftround

" Search
set ignorecase
set smartcase
set gdefault

set background=light
set termguicolors
set cursorline
