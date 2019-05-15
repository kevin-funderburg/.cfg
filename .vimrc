"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN SETTINGS
" site: https://github.com/VundleVim/Vundle.vim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, d
Plugin 'VundleVim/Vundle.vim'


" 
" Obtained these from
" https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9
" 
"
" Editor Plugins
"
" Plugin 'editorconfig/editorconfig-vim'
" Multi editor tool for defining base file handling
" I'm going to wait on this one, still warming up
" https://github.com/editorconfig/editorconfig-vim


" Adds multiple cursors to editor
" ctrl + n for start word key
Plugin 'terryma/vim-multiple-cursors'

" Surrounds text with delimiters
" cs + delimiter to be replaced + delimiter replacing
Plugin 'tpope/vim-surround'

" Shows window in file structure (ctrl+O)
Plugin 'scrooloose/nerdtree'
map <C-o> :NERDTreeToggle<CR>

" Adds gutter to view git changes
Plugin 'airblade/vim-gitgutter'

" Code analysis tool
Plugin 'w0rp/ale'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" Dash plugin
Plugin 'rizzatti/dash.vim'

"
"
" Themes
"
"
Plugin 'rakr/vim-one'
Plugin 'kaicataldo/material.vim'

" Material theme
let g:material_theme_style = 'dark'
let g:material_terminal_italics = 1

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='one'

" lightline - adds a color bar
Plugin 'itchyny/lightline.vim'
set laststatus=2
set noshowmode
"let g:lightline = {'colorscheme': 'material_vim'}
let g:lightline = {'colorscheme': 'one'}

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"
" 
"
"                        END PLUGIN LOAD
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITOR SETTINGS
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set number  "show line numbers
set mouse=a "Enable the mouse
set clipboard=unnamed  "Copy and paste from/to system clipboard





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" APPEARANCE SETTINGS"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme one
" colorscheme darcula
" colorscheme material

set background=dark

"
" Enable True Colors
"
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neoviZZm/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    set termguicolors
endif


"
" Font
"
set gfn=Fira\ Code\ 14
syntax on


"
" Cursor appearance
" 
"if &term =~ "xterm\\|rxvt"
"    let &t_SI = "\<Esc>[5 q" " use a | cursor in insert mode
"else
"    let &t_EI = "\<Esc>[1 q" " use a rectangle cursor otherwise
"endif
let &t_SI = "\<Esc>[5 q"    " use a | cursor in insert mode
let &t_EI = "\<Esc>[1 q"    " use a rectangle cursor in normal mode

"" optional reset cursor on start:
"augroup myCmds
"au!
"autocmd VimEnter * silent !echo -ne "\e[2 q"
"augroup END

"" Restore cursor to | on exit so Terminal is normal
"autocmd VimLeave * let &t_me="\<Esc>[5 q"
"
"if v:progname =~? "evim"
"    finish
"endif
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

