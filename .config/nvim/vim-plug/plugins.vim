" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Surround with pairs
    Plug 'machakann/vim-sandwich'
    " OneDark Theme
    Plug 'joshdick/onedark.vim'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Tabline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Latex Support
    Plug 'lervag/vimtex'
    " Snippet support
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " colors
    Plug 'chrisbra/Colorizer'
    " put cursor at the place of last time of file edit
    Plug 'farmergreg/vim-lastplace'
	" Processing support
	Plug 'sophacles/vim-processing'
	"  yuck for eww support
	Plug 'elkowar/yuck.vim'
	" Nette
	Plug 'fpob/nette.vim'
call plug#end()

" Auto install missing plugins
autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif
