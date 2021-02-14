" Base settings
set encoding=utf-8
set ruler
set showmatch
set showmode
set confirm
set number relativenumber
set guifont=Cozette\ 9
set signcolumn=yes
set clipboard+=unnamedplus

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'Shougo/deoplete.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug '~/.fzf'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'ludovicchabant/vim-gutentags'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'carlitux/deoplete-ternjs'
Plug 'neomake/neomake', { 'on': 'Neomake' }
Plug 'scrooloose/nerdtree'
call plug#end()

" Syntax highlighting
syntax on
filetype on
set termguicolors
colorscheme nord

" Line length
set colorcolumn=80,100,120

" Indentation
" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
set expandtab

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
"let g:python3_host_prog = '/home/simon/.local'
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:tex_flavor = "latex" 
let g:vimtex_view_general_viewer = 'zathura'
" let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_latexmk = {
      \ 'continuous' : 1,
      \ 'options' : [
            \   '-pdf',
            \   '--shell-escape',
            \   '-verbose',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
    \}
" TOC settings
let g:vimtex_toc_config = {
      \ 'name' : 'TOC',
      \ 'layers' : ['content', 'todo', 'include'],
      \ 'resize' : 1,
      \ 'split_width' : 50,
      \ 'todo_sorted' : 0,
      \ 'show_help' : 1,
      \ 'show_numbers' : 1,
      \ 'mode' : 2,
      \ }
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = [" — persistent"]

let g:neomake_javascript_enabled_makers = ['eslint']

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <Leader><Tab> <space><space>
xnoremap p "_dP 
" Deoplete for vimtex
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete,
      \ 'smart_case': v:true,
      \ 'refresh_always': v:true,
      \})
cabbr <expr> %% expand('%:p:h')
set mouse=a 
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
