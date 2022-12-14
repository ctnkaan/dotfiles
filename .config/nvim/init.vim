:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/andweeb/presence.nvim' " Discord Presence
Plug 'https://github.com/mhinz/vim-startify' " Dashboard

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/Shougo/unite.vim'
Plug 'https://github.com/jreybert/vimagit'
Plug 'https://github.com/edkolev/promptline.vim'
Plug 'https://github.com/lambdalisue/battery.vim/'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/williamboman/mason.nvim'

" Git lens
Plug 'APZelos/blamer.nvim'

" Copilot
Plug 'https://github.com/github/copilot.vim'

" LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

"  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Error Detection
Plug 'folke/trouble.nvim'

"Floating Terminal
Plug 'voldikss/vim-floaterm'

" Web Development
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim'

" Themes
Plug 'Rigellute/shades-of-purple.vim'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/Haron-Prime/Antares'


call plug#end()



if (has("termguicolors"))
 set termguicolors
endif

"enable the theme
syntax enable
colorscheme shades_of_purple


" ---------------Keymaps---------------
let mapleader = " "

nnoremap <leader>e :NERDTreeToggle<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>s <Plug>localsearch_toggle

" Tab to go through buffers
nnoremap <tab> <cmd>bnext<cr>

" Trouble error linter
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>

" Hover to see more info
nnoremap <leader>k :call CocAction('doHover')<CR>

" move left and right
nnoremap L <C-W><C-L>
nnoremap H <C-W><C-H>

nnoremap <leader> <Down> <cmd>+50<cr>
nnoremap <leader> <Up> <cmd>-50<cr>

let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:battery#update_tabline = 1    " For tabline.
let g:battery#update_statusline = 1 " For statusline.

" To make the background transparent
" augroup user_colors
 " autocmd!
 " autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
" augroup END

" ----------Airline---------------
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:shades_of_purple_airline = 1
let g:airline_theme='shades_of_purple'


" ~/full/path-to/file-name.js
let g:airline#extensions#tabline#formatter = 'default'  " f/p/file-name.js
let g:airline#extensions#tabline#formatter = 'jsformatter' " path-to/f
let g:airline#extensions#tabline#formatter = 'unique_tail' " file-name.js
let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " f/p/file-name.js

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = '???'
let g:airline_left_alt_sep = '???'
let g:airline_right_sep = '???'
let g:airline_right_alt_sep = '???'
let g:airline_symbols.branch = '???'
let g:airline_symbols.readonly = '??? '
let g:airline_symbols.linenr = '??? '
let g:airline_symbols.maxlinenr = '??? '


lua <<EOF
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
EOF

let g:blamer_enabled = 1


set statusline=...%{battery#component()}...
set tabline=...%{battery#component()}...
