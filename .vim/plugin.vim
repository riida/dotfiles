call plug#begin('~/.vim/plugged')

Plug 'Shougo/dein.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neosnippet'
Plug 'tomasr/molokai'
Plug 'sjl/badwolf'
Plug 'w0ng/vim-hybrid'
Plug 'tyru/caw.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'slim-template/vim-slim'

Plug 'Shougo/unite.vim'

Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet-snippets'
"fatif original molokai
" Plug 'fatih/molokai'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
