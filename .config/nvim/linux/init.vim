source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/themes/airline.vim
source ~/.config/nvim/themes/nerdcommenter.vim
source ~/.config/nvim/themes/config.vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

if has('win32')
  runtime ./windows.vim
endif

set nocompatible
set runtimepath^=/path/to/coc.nvim
filetype plugin indent on
syntax on
set hidden

"Mouse
set mouse=a

set encoding=utf8

set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

colorscheme gruvbox
set background=dark
set termguicolors
