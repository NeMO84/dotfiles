" defaults
filetype plugin indent on
syntax on
set backspace=indent,eol,start
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" leader key
let mapleader = "\<Space>"

" custom maps
nnoremap / :Commentary<CR>
vnoremap / :Commentary<CR>
nnoremap <Leader>k :NERDTreeToggle<CR>
nnoremap <Leader>o :FZF<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>
nnoremap <C-L> :nohlsearch<CR><C-L>
nnoremap <Leader><Tab> <C-W>w<CR>

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" theme, layout, status-bar
colorscheme peachpuff
set cursorline
hi CursorLineNR ctermbg=235 ctermfg=red
hi CursorLine ctermbg=235 term=bold cterm=bold guibg=Grey40
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1

" numbers
set relativenumber

" splitpane
set splitbelow
set splitright

" tabs
set expandtab
set shiftround
set autoindent
let s:tabwidth=2
let &l:tabstop = s:tabwidth
let &l:shiftwidth = s:tabwidth
let &l:softtabstop = s:tabwidth

" plugins
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree' 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

