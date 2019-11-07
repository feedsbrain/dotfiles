syntax on

" Flash screen instead of beep sound
set visualbell

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Enable line number
set number

" Code style
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4

set expandtab tabstop=4 shiftwidth=4 softtabstop=4 smarttab

" Enable undo
set undofile
set undodir=~/.vim/undodir

filetype plugin indent on
set backspace=indent,eol,start


" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall

" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

" Set vscode look
colorscheme codedark
let g:airline_theme = 'codedark'

" Linter
let g:ale_fixers['javascript'] = ['eslint']

" Fix files automatically on save
let g:ale_fix_on_save = 1

" go-vim
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

" NERDTree
:nnoremap <C-g> :NERDTreeToggle<CR>

" air-line
" let g:airline_powerline_fonts = 1

