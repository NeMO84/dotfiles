" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" Select your Leader key
let mapleader = "\<Space>"

" Custom Maps
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap / :Commentary<CR>
vnoremap / :Commentary<CR>
nnoremap <Leader>k :NERDTreeToggle<CR>
nnoremap <Leader>o :FZF<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>

" Number
set number

" SplitPane
set splitbelow
set splitright

" Tabs
setlocal noexpandtab
setlocal shiftround
setlocal autoindent
let s:tabwidth=2
let &l:tabstop = s:tabwidth
let &l:shiftwidth = s:tabwidth
let &l:softtabstop = s:tabwidth

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
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

call plug#end()

