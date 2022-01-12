set number
set title 
set mouse=a
set mouse=r
set cursorline

set numberwidth
set clipboard=unnamed
syntax enable 
set showcmd
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set splitright

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'


call plug#begin('~/.vim/plugged')

" Themes 
Plug 'morhetz/gruvbox'
Plug 'wadackel/vim-dogrun'
Plug 'dikiaap/minimalist'

" Status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'


"IDE aperance
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs' 

"Find files
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


"Multicursor
Plug 'terryma/vim-multiple-cursors'

"Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
Plug 'mattn/emmet-vim' 


" Sourcery
Plug 'neoclide/coc.nvim', {'branch': 'relesase'}


"Identation pep8
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

"Flutter plug
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'thosakwe/vim-flutter'

"JavaScript plugs
" Plug 'jelera/vim-javascript-syntax'

"Git
Plug 'jreybert/vimagit' 
Plug 'kdheepak/lazygit.vim'

" Typing
Plug 'tpope/vim-surround'

call plug#end()


colorscheme minimalist
let g:deoplete#enable_at_start = 1
let g:jsx_ext_required = 0
let NERDTreeQuitOnOpen = 1

let mapleader=" "

nmap <leader>b :NERDTreeFind<CR>
nmap <leader>s <Plug>(easymotion-s2)

nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>l :noh<CR>
nmap <leader>c ciw
nmap <leader>r :%s/
nmap <leader>v <C-v> 
nmap <leader>n <C-n> 
nmap <Right> l
nmap <leader><Up> <C-k>
nmap <leader><Down> <C-J>
nmap <leader><Right> <C-l> 
nmap <leader><Left> <C-h> 
nmap <leader><Left><Right> :vsplit<CR>
nmap <leader><Left><Down> :split<CR>


let g:deoplete#enable_at_startup = 1


let g:user_emmet_mode = 'n'
let g:user_emmet_leader_key = ','
let g:lsc_auto_map = v:true 

let g:ale_linter = {'python':['flake8', 'pycodestyle', 'bandit', 'mypy']}
let g:ale_fixers = {'*':['remove_trailing_lines', 'trim_whitespace'],'python':['black', 'isort'],}
let g:ale_fix_one_save = 1



nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
nmap <silent>K :call <SID>show_documentation()<CR>

nmap <leader>z :CocDiagnostics<cr>
nmap <leader>zf :CocFix<cr>
nmap <leader>zh :call CocAction('doHover')<cr>

nmap <leader>g :LazyGit<CR>

# Terminal 
nmap <silent>[[ :vsplit term://bash <cr>


nmap ff <cmd>Telescope find_files<cr>
nmap fg <cmd>Telescope live_grep<cr>
nmap fb <cmd>Telescope buffers<cr>
nmap fh <cmd>Telescope help_tags<cr>

