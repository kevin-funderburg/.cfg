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
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" """""""""""""""""""""""""""
" Obtained these from
" https://medium.com/@huntie/10-essential-vim-plugins-for-2018-39957190b7a9
" """""""""""""""""""""""""""
" lightline - adds a color bar
" https://github.com/itchyny/lightline.vim
Plugin 'itchyny/lightline.vim'
"Settings for lightline plugin
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }


" Multi editor tool for defining base file handling
" I'm going to wait on this one, still warming up
" https://github.com/editorconfig/editorconfig-vim
"Plugin 'editorconfig/editorconfig-vim'

" Adds multiple cursors to editor
" https://github.com/terryma/vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'
" ctrl + n for start word key
" Surrounds text with delimiters
" https://github.com/tpope/vim-surround
Plugin 'tpope/vim-surround'
" cs + delimiter to be replaced + delimiter replacing
" Shows window in file structure
" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
" mapped to ctrl+O
map <C-o> :NERDTreeToggle<CR>

" Code analysis tool
" https://github.com/w0rp/ale
Plugin 'w0rp/ale'



" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" Dash plugin - https://github.com/rizzatti/dash.vim#readme
Plugin 'rizzatti/dash.vim'


" All of your Plugins must be added before the following line
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



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITOR SETTINGS
" 
"
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
"Enable the mouse
set mouse=a
"Copy and paste fromto/from system clipboard
set clipboard=unnamed




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" APPEARANCE SETTINGS
" site: https://github.com/VundleVim/Vundle.vim
"
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme darcula

"Font
set gfn=Fira\ Code\ 12
syntax on

"Cursor appearance
if &term =~ "xterm\\|rxvt"
  " use a | cursor in insert mode
  let &t_SI = "\<Esc>[5 q"

  " use a rectangle cursor otherwise
  let &t_EI = "\<Esc>[1 q"
endif

"Restore cursor to | on exit so Terminal is normal
autocmd VimLeave * let &t_me="\<Esc>[5 q"



if v:progname =~? "evim"
    finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

