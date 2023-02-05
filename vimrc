set nocompatible              " required
filetype off                  " required

call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'junegunn/fzf.vim'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'hashivim/vim-terraform'

call plug#end()

" set the runtime path to include Vundle and initialize
"""set rtp+=~/.vim/bundle/Vundle.vim
"""call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
""" Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
"""call vundle#end()            " required
filetype plugin indent on    " required

syntax on

colorscheme desert

set ruler
set number

" set list
" set listchars=tab:>-

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
autocmd BufRead,BufNewFile *Jenkinsfile set filetype=groovy
