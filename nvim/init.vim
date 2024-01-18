" Make <Space> the leader key
map <space> <leader>
map ; :

set number
"set relativenumber
set colorcolumn=80
set mouse=a                " TODO: check default

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set cindent

" Keep cursor 5 lines away from top/bottom of screen
set scrolloff=5

nmap <leader>e :tabe .<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>

nmap <leader>h :noh<CR>

" trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
            \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

set updatetime=300 " Reduces delay for plugin refreshes

set signcolumn=yes

call plug#begin()
Plug 'luochen1990/rainbow' "Rainbow parens
Plug 'tpope/vim-surround' "Surrounding ysw)
Plug 'tpope/vim-commentary' "For Commenting gcc & gc
Plug 'vim-airline/vim-airline' "Status bar
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Auto Completion
Plug 'ryanoasis/vim-devicons' "Developer Icons
Plug 'preservim/tagbar' "Tagbar for code navigation
Plug 'ludovicchabant/vim-gutentags' "Maintain tagfile
Plug 'gruvbox-community/gruvbox' "Gruvbox theme
Plug 'airblade/vim-gitgutter' "Show git changes in gutter
Plug 'ntpeters/vim-better-whitespace' "Highlight trailing whitespace
Plug 'nvim-lua/plenary.nvim' "Lua functions for Telescope
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' } "Fuzzy finder
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Treesitter
Plug 'neovimhaskell/haskell-vim'
" Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
call plug#end()

set termguicolors
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
colo gruvbox

" rainbow parens
let g:rainbow_active = 1

" Map insert mode CTRL-{hjkl} to arrows
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

" same in normal mode
nmap <C-h> <Left>
nmap <C-j> <Down>
nmap <C-k> <Up>
nmap <C-l> <Right>

nmap <F8> :TagbarToggle<CR>

map <F12> :CocCommand clangd.switchSourceHeader<CR>

nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>

inoremap <silent><expr> <c-space> coc#refresh()

" [g and ]g to navigates diagnostics
" :CocDiagnostics gets all diagnostics of current buffer
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" <Tab> and <s-Tab> navigates completion
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" <cr> confirms completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
