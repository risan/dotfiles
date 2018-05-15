" Specify a directory for plugins.
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugins.
Plug 'airblade/vim-gitgutter'
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'lumiliet/vim-twig', { 'for': 'twig' }
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'skwp/greplace.vim'
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'tobyS/pdv', { 'for': 'php' }
Plug 'tobyS/vmustache', { 'for': 'php' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

" Initialize plugin system
call plug#end()
