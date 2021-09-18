set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  Plugin 'ycm-core/YouCompleteMe'

  Plugin 'chr4/nginx.vim'
  Plugin 'fladson/vim-kitty'

call vundle#end()
filetype plugin indent on
