" vim-indent-guidesの設定
colorscheme molokai 

" highlight Normal ctermbg=none
" カラーをオートで設定するかどうか
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=110
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=140

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

" caw.vim.git
nmap <C-k> <Plug>(caw:i:toggle)
vmap <C-k> <Plug>(caw:i:toggle)
