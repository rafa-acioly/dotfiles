call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'zhaocai/GoldenView.Vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
Plug 'tmhedberg/SimpylFold'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-surround'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'derekwyatt/vim-scala'
Plug 'easymotion/vim-easymotion'
call plug#end()

colorscheme gruvbox

let mapleader="\<Space>"
vnoremap <leader>p "_dP

set hidden
set background=dark
set number
set relativenumber
set mouse=a
set inccommand=split
set encoding=UTF-8
set clipboard=unnamedplus
set smarttab
set smartindent
set autoindent
set spell
set foldmethod=indent
set foldlevel=99
set switchbuf=newtab

nnoremap <c-e> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <leader>ev :vsp ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <C-y> "+y
vnoremap <C-y> "+y
vnoremap < <gv
vnoremap > >gv

nmap <silent> gp <Plug>(coc-diagnostic-prev)
nmap <silent> gn <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

map <A-1> :NERDTreeToggle<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

let g:python_host_prog = "/usr/bin/python"
let g:python3_host_prod = "/usr/bin/python3"
let g:SimpylFold_docstring_preview = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:scala_scaladoc_indent = 1
