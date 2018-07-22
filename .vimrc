if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" dein.vimインストール時に指定したディレクトリをセット
let s:dein_dir = expand('~/.vim/dein')

" dein.vimの実体があるディレクトリをセット
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vimが存在していない場合はgithubからclone
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(expand('~/.vim/dein'))

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neosnippet')

  call dein#add('tomasr/molokai')
  call dein#add('sjl/badwolf')

  call dein#add('w0ng/vim-hybrid')

  call dein#add('tyru/caw.vim.git')

  call dein#add('itchyny/lightline.vim')
  call dein#add('scrooloose/nerdtree')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" ftplugin 有効
filetype plugin on
filetype indent on

"###表示設定###
set number
set title
set showmatch
syntax on
set tabstop=4 "インデントの文字数
set shiftwidth=4 "オートインデント時にインデントする文字数
set expandtab
set smartindent "オートインデント

augroup vimrc
autocmd! FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=2
autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType css  setlocal shiftwidth=4 tabstop=2 softtabstop=2
autocmd!
augroup END

"###検索設定###
set ignorecase "大文字/小文字の区別なく検索
set smartcase "検索文字列に大文字が含まれている場合は区別して検索
set wrapscan "検索時に最後まで行ったら最初に戻る

"###コマンドラインの補完###
set wildmenu

" Appearance
set number background=dark display=lastline,uhex wrap wrapmargin=0 showbreak= notitle guioptions=ce
set showmatch matchtime=1 noshowmode shortmess+=I cmdheight=1 cmdwinheight=10 scrolloff=0
set noshowcmd noruler rulerformat= laststatus=2 statusline=%t\ %=\ %m%r%y%w\ %3l:%-2c
silent! set cursorline nocursorcolumn colorcolumn= concealcursor=nvc conceallevel=0 showtabline=1
silent! set list listchars=tab:>\ ,nbsp:_ synmaxcol=1000 ambiwidth=double breakindent breakindentopt=
if has('gui_running') | set lines=999 columns=999 | else | set t_Co=256 | endif
silent! let [&t_SI,&t_EI] = ["\e]50;CursorShape=1\x7","\e]50;CursorShape=0\x7"]

" vim-indent-guidesの設定
colorscheme molokai 
" highlight Normal ctermbg=none
" カラーをオートで設定するかどうか
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=110
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=140

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" insert mode で hjkl でカーソル移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" Ctrl + c を esc に割当
inoremap <C-c>j <ESC>
inoremap <C-c>k <ESC>

" caw.vim.git
nmap <C-k> <Plug>(caw:i:toggle)
vmap <C-k> <Plug>(caw:i:toggle)
