source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/themes/airline.vim

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


colorscheme NeoSolarized
set background=dark
set termguicolors

" Default value is "normal", Setting this option to "high" or "low" does use the
" same Solarized palette but simply shifts some values up or down in order to
" expand or compress the tonal range displayed.
let g:neosolarized_contrast = "normal"

" Special characters such as trailing whitespace, tabs, newlines, when displayed
" using ":set list" can be set to one of three levels depending on your needs.
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "normal"

" I make vertSplitBar a transparent background color. If you like the origin
" solarized vertSplitBar style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1

" If you wish to enable/disable NeoSolarized from displaying bold, underlined
" or italicized" typefaces, simply assign 1 or 0 to the appropriate variable.
" Default values:
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 0

" Used to enable/disable "bold as bright" in Neovim terminal. If colors of bold
" text output by commands like `ls` aren't what you expect, you might want to
" try disabling this option. Default value:
let g:neosolarized_termBoldAsBright = 1


let g:airline_powerline_fonts = 1


" Comment 
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
