"
" Vundle setup
"
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'captbaritone/better-indent-support-for-php-with-html'

" Plugins go here
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"
" End Vundle
"

" Restrict modeline options (they are used to set spacing in comments in files)
set secure

" Remember last place when reopening files
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Syntax highlighting
syntax on
color desert

" Highlight current line
" set cursorline

" Highlight all search results
set hlsearch

" Highlight search as you type
set incsearch

" Visual menu for tab completion
set wildmenu

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Spacing preferences
set tabstop=4     " How long each tab is
set shiftwidth=4  " Behavior of indenting with >
set autoindent    " Self-explanatory
"set expandtab     " Spaces, not tabs (not my preference but whatever)
set softtabstop=4 " How many spaces to delete when backspacing a tab

" Auto-indent when it makes sense, e.g. after an opening curly brace
set smartindent

" Show line, column, etc. in bottom right
set ruler

" Highlight matching braces
set showmatch

" Allow %-style jumping between brackets
set matchpairs+=<:>

" Reselect selection after indent
vnoremap < <gv
vnoremap > >gv
