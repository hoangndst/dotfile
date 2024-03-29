" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('C:/Users/hoang/AppData/Local/nvim/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    Plug 'myusuf3/numbers.vim'

    Plug 'vim-airline/vim-airline'
    
    Plug 'vim-airline/vim-airline-themes'
    
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Keeping up to date with master
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    
    Plug 'arcticicestudio/nord-vim'
    
    Plug 'ryanoasis/vim-devicons'
   
    Plug 'morhetz/gruvbox'
    
    Plug 'overcache/NeoSolarized'

    Plug 'yuttie/comfortable-motion.vim'
    
    Plug 'preservim/nerdcommenter'

call plug#end()
