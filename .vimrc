"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" ここから追加のプラグイン
" lightline.vimを追加
NeoBundle 'itchyny/lightline.vim'
" vim-indent-guidesを追加
NeoBundle 'nathanaelkane/vim-indent-guides'
" molokai（colorscheme）を追加
NeoBundle 'tomasr/molokai'

NeoBundleCheck

call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
"NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------


"###表示設定###
set number
set title
set showmatch
syntax on
set tabstop=4 "インデントの文字数
set shiftwidth=4 "オートインデント時にインデントする文字数
set expandtab
set smartindent "オートインデント

"###検索設定###
set ignorecase "大文字/小文字の区別なく検索
set smartcase "検索文字列に大文字が含まれている場合は区別して検索
set wrapscan "検索時に最後まで行ったら最初に戻る

set number background=dark display=lastline,uhex wrap wrapmargin=0 showbreak= notitle guioptions=ce
set showmatch matchtime=1 noshowmode shortmess+=I cmdheight=1 cmdwinheight=10 scrolloff=0
set noshowcmd noruler rulerformat= laststatus=2 statusline=%t\ %=\ %m%r%y%w\ %3l:%-2c
silent! set cursorline nocursorcolumn colorcolumn= concealcursor=nvc conceallevel=0 showtabline=1
silent! set list listchars=tab:>\ ,nbsp:_ synmaxcol=1000 ambiwidth=double breakindent breakindentopt=
if has('gui_running') | set lines=999 columns=999 | else | set t_Co=256 | endif
silent! let [&t_SI,&t_EI] = ["\e]50;CursorShape=1\x7","\e]50;CursorShape=0\x7"]

" vim-indent-guidesの設定
colorscheme default
" highlight Normal ctermbg=none
" カラーをオートで設定するかどうか
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=110
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=140

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
