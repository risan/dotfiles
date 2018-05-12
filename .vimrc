" Always use the improved version.
set nocompatible

" Automatically write the file when switching buffer.
set autowriteall

" Use the unnamed (*) and unnamedplus (+) registers that are used by the system
" clipboard.
set clipboard^=unnamed,unnamedplus

" Don't redraw screen while executing macros or registers.
set lazyredraw

" Automatically detect file changes outside of vim.
set autoread

" Defines the delay of writing buffer to swap file if there's no activity.
set updatetime=200

" Set the leader key.
let mapleader = ','

" Allow netrw to remove non-empty directory.
let g:netrw_localrmdir='rm -r'


" Load the plugins.
so ~/.vim/plugins.vim




"========================================
" APPEARANCES
"========================================
" Enable syntax highlighting.
syntax enable

" Use the 256 colors.
set t_Co=256

" Set the theme.
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection = 0
colorscheme gruvbox

" Font settings.
set guifont=Fira_code:h14

" Show the line numbers.
set number


" Set line space (GUI only).
set linespace=8

" Highlight columns for ruller.
set colorcolumn=81,121

" Always show the sign column.
set signcolumn=yes


" Disable the beep bell.
set vb t_vb=

" Show tab and trailing spaces.
set list
set listchars=tab:→·,trail:·

" Hide the scrollbars.
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" Set line numbers color.
hi LineNr ctermbg=235 guibg=#282828

" Set the sign column color.
hi SignColumn ctermbg=235 guibg=#282828

" Set the ruller color.
hi ColorColumn ctermbg=235 guibg=#282828




"========================================
" TABS AND INDENTATIONS
"========================================

" Specify the width of tab characters.
set tabstop=4

" Fine tune the amount of white spaces for a tab in insert mode.
set softtabstop=4

" Expand the tab to spaces.
set expandtab

" Specify the width of tab characters in normal mode.
set shiftwidth=4




"========================================
" SEARCHING
"========================================
" Ignore case when searching.
set ignorecase

" Keep case sensitivity when searching with mixed cases.
set smartcase

" Highlight the matched search terms.
set hlsearch

" Activate incremental search.
set incsearch




"========================================
" SPLITS
"========================================
" Open a new horizontal split below the current one.
set splitbelow

" Open a new vertical split on the right.
set splitright




"========================================
" AUTOCOMPLETE
"========================================
" Set the auto completion sources:
" - . : Scan the current file
" - w : Scan the buffers from the other windows (splits)
" - b : Scan the active buffers (marked with a) from the buffer list
" - u : Scan the unloaded buffers from the buffer list
" - t : Scan the tags file
" - i : Scan the included files (using the #include, require, load keywords)
set complete=.,w,b,u,t,i

" Completion options:
" - menuone : Display popup menu even when there's only one match
" - preview : show extra information about the selected completion
" - longest : only insert the longest common text of the matches
set completeopt=menuone,preview




"========================================
" MAPPINGS
"========================================
" Shortcut to edit vimrc config files.
nmap <Leader>ev :tabedit $MYVIMRC<CR>
nmap <Leader>eg :tabedit ~/.gvimrc<CR>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<CR>

" Clear the highlighted search terms.
nmap <Leader><space> :nohlsearch<CR>

" Swith split shorcuts.
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>

" Indentation shortcuts.
nmap <Leader>[ <<
nmap <Leader>] >>
vmap <Leader>[ <gv
vmap <Leader>] >gv

" Expand %% to the current directory of the active file.
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<CR>

" Shortcut to edit other file relative to the active one.
nmap <leader>ew :e %%
nmap <leader>es :vsp %%
nmap <leader>et :tabe %%

" Laravel shortcuts.
nmap <Leader>lr :e routes/web.php<CR>
nmap <Leader>lm :!php artisan make:
nmap <Leader>lc :e app/Http/Controllers<CR>
nmap <Leader>lv :e resources/views<CR>




"========================================
" MACROS
"========================================
" PHP add class property.
let @p = "mxyiw/}O$this->pa = $pa;'x?^[ \t]*$\\|{oprotected $pa;`x, "




"========================================
" PLUGINS
"========================================
" ack.vim
"----------------------------------------
" Use the 'ag' or the silver searcher instead of ack.
let g:ackprg = 'ag --vimgrep'


" CtrlP
"----------------------------------------
" Exclude files or directories.
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules)$'

" Configure match window.
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:15,results:15'

" Fuzzy search for tags within the current buffer.
nmap <silent> <Leader>r :CtrlPBufTag<CR>

" Fuzzy search for tags.
nmap <silent> <Leader>t :CtrlPTag<CR>

" Fuzzy search for most recent files.
nmap <silent> <Leader>e :CtrlPMRUFiles<CR>

" Fuzzy search for buffers.
nmap <silent> <Leader>b :CtrlPBuffer<CR>

" ctags -R --languages=PHP,JavaScript --PHP-kinds=cdfintv --JavaScript-kinds=fcmpCv --exclude=node_modules


" greplace.vim
"----------------------------------------
" Use ag instead of grep.
set grepprg=ag

" Grep command options.
let g:grep_cmd_opts = '--line-numbers --noheading'


" NERDTree
"----------------------------------------
" Don't let NERDTree hijack the netrw.
let NERDTreeHijackNetrw = 0

" Shortcut to open NERDTree.
nmap <Leader>1 :NERDTreeToggle<CR>

" PDV - PHP Documentor for VIM
"----------------------------------------
" Template for PHP docblock.
let g:pdv_template_dir = $HOME . '/.vim/bundle/pdv/templates_snip'

" Shortcut to automatically generate a docblock.
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>

" php.vim
"----------------------------------------
" Highlight SQL syntax within string.
let php_sql_query = 1

" Set $ as part of highlighting group.
let php_var_selector_is_identifier = 1


" supertab
"----------------------------------------
" Set the default completion type.
let g:SuperTabDefaultCompletionType = 'context'

" Default completion type when context completion has no results.
let g:SuperTabContextDefaultCompletionType = '<C-n>'

" List of contexts to use for context completion.
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']

" Omni completion names in order of precedence for context text.
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']

" Omni completion mappings for context discover.
let g:SuperTabContextDiscoverDiscovery = ['&completefunc:<C-x><C-u>', '&omnifunc:<C-x><C-o>']

" Retains the completion type until the current completion.
let g:SuperTabRetainCompletionDuration = 'completion'

" Set fallback for the omni completion.
autocmd FileType *
    \ if &omnifunc != '' |
    \   call SuperTabChain(&omnifunc, '<C-n>') |
    \ endif


" UltiSnips
"----------------------------------------
" Trigger key to expand the snippet.
let g:UltiSnipsExpandTrigger = '<Tab>'

" Key to jump to the next tab stop.
let g:UltiSnipsJumpForwardTrigger = '<C-b>'

" Key to jump to the previous tab stop.
let g:UltiSnipsJumpBackwardTrigger = '<C-z>'

" Directory to load the private snippets.
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'


" Vim Better Whitespace
"----------------------------------------
" Enable whitespace highlighting.
let g:better_whitespace_enabled=1

" Highlight space characters that appear before or in-between tabs.
let g:show_spaces_that_precede_tabs=1

" Strip whitespaces on save.
let g:strip_whitespace_on_save=1

" Strip white lines at the end of the file.
let g:strip_whitelines_at_eof=1


" vim-commentary
"----------------------------------------
" Set the comment string for PHP.
autocmd FileType php setlocal commentstring=//\ %s

" vim-gitgutter
"----------------------------------------
hi GitGutterAdd ctermbg=106 ctermfg=230 guibg=#98971a guifg=#f9f5d7
hi GitGutterChange ctermbg=172 ctermfg=230 guibg=#d79921 guifg=#f9f5d7
hi GitGutterDelete ctermbg=124 ctermfg=230 guibg=#cc241d guifg=#f9f5d7
hi GitGutterChangeDelete ctermbg=172 ctermfg=230 guibg=#d79921 guifg=#f9f5d7


" vim-php-cs-fixer
"----------------------------------------
let g:php_cs_fixer_path = '~/.composer/vendor/bin/php-cs-fixer'

if filereadable('.php_cs.dist')
    let g:php_cs_fixer_config_file = '.php_cs.dist'
else
    let g:php_cs_fixer_rules = '@Symfony'
endif

" Shortcut to fix the file.
nnoremap <silent><leader>cf :call PhpCsFixerFixFile()<CR>


" vim-php-namespace
"----------------------------------------
" Import class or functio using use keyword.
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a', 'n')
endfunction

autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

" Expand class under the cursor to the fully qualified name.
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>




"========================================
" AUTO COMMANDS
"========================================
augroup autosourcing
    autocmd!

    " Source the .vimrc on save.
    autocmd BufWritePost .vimrc source %

    " Source the .vimrc file on plugins.vim save.
    autocmd BufWritePost plugins.vim source $MYVIMRC
augroup END
