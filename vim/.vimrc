" Not needed but "safe": http://stackoverflow.com/a/5845583.
set nocompatible
" Turn off modelines (setting Vim variables in a file).
set modelines=0
" Use the OS clipboard by default (on versions compiled with `+clipboard`).
if has('clipboard')
	set clipboard=unnamed
endif
" Allow cursor keys in insert mode.
set esckeys
" Allow backspace in insert mode.
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Use UTF-8 without BOM.
set encoding=utf-8 nobomb
" Change leader.
let mapleader=","
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*
" Respect modeline in files.
set modeline
set modelines=4
" Enable line numbers.
set number
" Enable syntax highlighting.
if has('syntax')
	syntax on
endif
" Highlight current line.
set cursorline
" Four spaces for tabs.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" Copy indent from current line when starting a new line.
set autoindent
" Show “invisible” characters.
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches.
set hlsearch
" Highlight dynamically as pattern is typed.
set incsearch
" Use normal regexes for search.
nnoremap / /\v
vnoremap / /\v
" Case-insensitive search unless it includes uppercase.
set ignorecase
set smartcase
" Always show status line.
set laststatus=2
" Show filename, modification flag, encoding, line ending, file type, and
" position (column, line, total lines) in status line.
set statusline=%f\ %m\ %=%{&fenc}\ %{&ff}\ %Y\ [%c,%l/%L]
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position.
set ruler
" Show a vertical ruler in column 80.
set colorcolumn=80
" Don’t show the intro message when starting Vim.
set shortmess=atI
" Show the current mode.
set showmode
" Show the filename in the window titlebar.
set title
" Start scrolling five lines before the horizontal window border.
set scrolloff=5
" Enable code folding.
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar.
nnoremap <space> za
" Better Python syntax highlighting.
let python_highlight_all = 1
" Delete comment character when joining commented lines.
set formatoptions+=j
" Read file again when it's been changed outside (but not inside) of Vim.
set autoread
" Wrap every line to continue visual indent.
if has('linebreak')
	set breakindent
endif
" Set spelling dictionary to British English and show spelling errors.
if exists("+spelllang")
	set spelllang=en_gb
	set spell
endif
" Single space after a full-stop when joining lines.
set nojoinspaces
" Better command completion, with longest shared completion filled.
set wildmenu
set wildmode=list:longest
" Show line numbers relative to current line.
set relativenumber
" Preserve undo levels across Vim sessions.
set undofile
" Map . to :, to save having to hit shift-. on an Icelandic keyboard.
nnoremap . :

" Vundle bundles.
" Install Vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'                 " Let Vundle handle Vundle.
Plugin 'tmhedberg/SimpylFold'              " Better code folding.
Plugin 'vim-scripts/indentpython.vim'      " Better indentation for Python.
Plugin 'hdima/python-syntax'               " Better Python syntax highlighting.
Plugin 'scrooloose/syntastic'              " Check syntax on save.
Plugin 'nvie/vim-flake8'                   " PEP-8 linter.
if has('signs')
	Plugin 'airblade/vim-gitgutter'        " Show git info in the gutter
endif
Plugin 'altercation/vim-colors-solarized'  " Solarized colour scheme.
call vundle#end()
filetype plugin indent on

" Map < and > to next and previous file changes (in git-managed files).
nmap > <Plug>GitGutterNextHunk
nmap < <Plug>GitGutterPrevHunk

if has("autocmd")
	" Save file when Vim loses focus.
	au FocusLost * :wa
	" Enable file type detection.
	filetype on
	" Treat .json files as JavaScript.
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown.
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
	" Follow PEP-8 for Python source files.
	autocmd BufNewFile,BufRead *.py set textwidth=79 fileformat=unix
	" Two-space tabs for HTML, CSS, and JavaScript files.
	autocmd BufNewFile,BufRead *.js, *.html, *.css set tabstop=2 softtabstop=2 shiftwidth=2
	" Limit line lengths in mutt to 72 characters.
	autocmd BufRead /tmp/mutt-* set tw=72
endif

" Use Solarized colour scheme.
set background=dark
colorscheme solarized
