source C:/Users/hoang/AppData/Local/nvim/vim-plug/plugins.vim
source C:/Users/hoang/AppData/Local/nvim/themes/airline.vim
source C:/Users/hoang/AppData/Local/nvim/themes/nerdcommenter.vim

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

set nocompatible
set runtimepath^=/path/to/coc.nvim
filetype plugin indent on
syntax on
set hidden

"Mouse
set mouse=a

set encoding=utf8


set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab


colorscheme gruvbox
set background=dark
set termguicolors

