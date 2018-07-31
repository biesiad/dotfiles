set guifont=Monaco:h11
set guioptions-=e
set guioptions-=m
set guioptions-=T
set guioptions-=r

syntax enable

" set belloff=all

" imap jj <Esc>

" mouse scroll in terminal
set mouse=n
set mouse=a

" set paste
set number
set cursorline

" Indent block
nnoremap <C-h> <<
nnoremap <C-l> >>
vnoremap <C-h> <gv
vnoremap <C-l> >gv

" Switch tab
nnoremap <C-j> gT<CR>
nnoremap <C-k> gt<CR>
nmap <C-t> :tabe %:h<CR>

" Search
syntax on
set ic        " ignore case on search
set smartcase " smart search case sensitive
set hlsearch
set incsearch
nnoremap <leader>n :noh<cr>

" whitespace
set list!
set listchars=tab:→\ ,trail:·,extends:>,precedes:<,nbsp:_

" Tabs config
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Folding config
set nofoldenable
set foldmethod=syntax
filetype plugin indent on

" Status line
set laststatus=2
set statusline=%F%m%r%h%w\ %=\ format=%{&ff}\ type=%Y\ line:%l/%L[%p%%]\ col:%v\ [\%03.3b][0x\%02.2B]

" Backup files
set backupdir=$TMPDIR,.
set directory=$TMPDIR,.

" common typos
cabbrev Q q
cabbrev W w
cabbrev Wa wa
cabbrev Wqa wqa

nnoremap <C-s> :%s/\s\+$//
nnoremap <leader>t :call Send_to_Tmux("rspec -c\n")<CR>

" nnoremap - ddp
" nnoremap _ ddkkp

" inoremap <c-u> <esc>viwUea

let mapleader = ","

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" inoremap jk <esc>
" inoremap <esc> <nop>

" for quickfixsigns
highlight clear SignColumn

