if &compatible
  set nocompatible
endif

" install vim-plug, if vim-plug is not installed, 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

scriptencoding utf-8

runtime plugin.vim
runtime basic.vim
runtime plugin_setting.vim
