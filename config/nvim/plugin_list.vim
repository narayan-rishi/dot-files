" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'sheerun/vim-polyglot' 						    " Syntax for 120 languages
Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
Plug 'lotabout/skim.vim'                          " Fuzzy file searcher 
Plug 'neoclide/coc.nvim', {'branch': 'release'}		" Conquer of Completion
Plug 'Raimondi/delimitMate' 								" Closes brackets
Plug 'scrooloose/nerdcommenter' 						" Comment blocks for any language
Plug 'tpope/vim-surround' 									" Surround text with brackets easily
Plug 'tpope/vim-repeat' 										" Repeat plugin map with '.'
Plug 'Raimondi/delimitMate' 								" Closes brackets
Plug 'scrooloose/nerdcommenter' 						" Comment blocks for any language
Plug 'preservim/nerdtree'                   " File browser
Plug 'vimwiki/vimwiki'                      " notes / wiki

" Themes
"Plug 'itchyny/lightline.vim'               " Lightweight status bar
Plug 'ap/vim-buftabline'                    " Minimal buffer status bar
Plug 'skielbasa/vim-material-monokai'       " Theme
"Plug 'liuchengxu/space-vim-dark'           " Theme
"Plug 'ayu-theme/ayu-vim'                   " Theme


" Initialize plugin system
call plug#end()
