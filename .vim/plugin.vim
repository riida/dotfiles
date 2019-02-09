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

  call dein#add('leafgarland/typescript-vim')

  call dein#add('slim-template/vim-slim.git')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
