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
set hlsearch

augroup vimrc
autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType css  setlocal shiftwidth=4 tabstop=2 softtabstop=2
augroup END

" 検索設定
set smartcase "検索文字列に大文字が含まれている場合は区別して検索
set wrapscan "検索時に最後まで行ったら最初に戻る

" コマンドラインの補完
set wildmenu

" Appearance
set number background=dark display=lastline,uhex wrap wrapmargin=0 showbreak= notitle guioptions=ce
set showmatch matchtime=1 noshowmode shortmess+=I cmdheight=1 cmdwinheight=10 scrolloff=0
set noshowcmd noruler rulerformat= laststatus=2 statusline=%t\ %=\ %m%r%y%w\ %3l:%-2c
silent! set cursorline nocursorcolumn colorcolumn= concealcursor=nvc conceallevel=0 showtabline=1
silent! set list listchars=tab:>\ ,nbsp:_ synmaxcol=1000 ambiwidth=double breakindent breakindentopt=
if has('gui_running') | set lines=999 columns=999 | else | set t_Co=256 | endif
silent! let [&t_SI,&t_EI] = ["\e]50;CursorShape=1\x7","\e]50;CursorShape=0\x7"]

" insert mode で hjkl でカーソル移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" Ctrl + c => j or k で Escape key 効果
inoremap <C-c>j <ESC>
inoremap <C-c>k <ESC>
