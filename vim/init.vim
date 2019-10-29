" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes
Plug 'scrooloose/nerdtree'

" Installs fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" fzf wrapper, for commonly used fzf commands
Plug 'junegunn/fzf.vim'

Plug 'mileszs/ack.vim'

Plug 'w0rp/ale'

Plug 'mxw/vim-jsx'

Plug 'pangloss/vim-javascript'

Plug 'epeli/slimux'

Plug 'kchmck/vim-coffee-script'

Plug 'tpope/vim-rails'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'

Plug 'ludovicchabant/vim-gutentags'

Plug 'majutsushi/tagbar'

" colorschemes
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'

" writing
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-colors-pencil'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'fishbullet/deoplete-ruby'

" Initialize plugin system
" Automatically calls filetype plugin indent on and syntax enable
call plug#end()

" Set leader to comma
let mapleader = ","

" Enable file type detection and do language-dependent indenting.
" See above comment, this is likely not necessary.
filetype plugin indent on
syntax enable

" colors
set termguicolors
colorscheme gruvbox
set background=light

" prevent 'unloading' buffers
set hidden

" word wrap
set linebreak

" Show position in file
set ruler

" Show line numbers
set number

" No noise.
set noerrorbells  

" Always show status line.
set laststatus=2

" Use 2 spaces for tabs, turn on automatic indenting
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" set code fold behaviour
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" case-insensitive search
set ignorecase

" if a pattern contains an uppercase letter, it is case sensitive
set smartcase

" set _ as word separator
" set iskeyword-=_

" delete buffer without losing split
map <silent> <leader>d :bp\|bd #<CR>

" clear search highlights
map <silent> <leader>c :noh<CR>

" vim-jsx
" allow syntax highlighting in files other than jsx (ie. js)
let g:jsx_ext_required = 0

" ale
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint']
\}
let g:ale_fix_on_save = 1

" ack.vim
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" NERDTree
map <leader>g :NERDTreeToggle<CR>

" slimux shortcuts
map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>

" fzf
map <Leader>f :Files<CR>

" tagbar, when opened, go to it
nnoremap <silent>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1

let g:gutentags_project_root = ['.gutentagsroot']

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1
inoremap <expr> <C-n> deoplete#manual_complete()
" Show types of the completions in the result data, including parameter lists.
let g:deoplete#sources#ternjs#types = 1
