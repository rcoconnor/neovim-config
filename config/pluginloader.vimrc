call plug#begin('~/.nvim/plugged')

"Code Folding 
Plug 'tmhedberg/SimpylFold'

"NERDTree
Plug 'scrooloose/nerdtree'

"Code Completion 
"Plug 'ycm-core/YouCompleteMe'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" C++ code completion
Plug 'Shougo/deoplete-clangx'

Plug 'calviken/vim-gdscript3'
"Plug 'habamax/vim-godot'
" Javascript code completion and configuration with deoplete 
"Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
"Plug 'carlitux/deoplete-ternjs', {'do': 'npm install -g '}


" surround the line with braces 
Plug 'tpope/vim-surround'

" Java comletion (there appears to be an issue when saving a file (cannot open
" socket)) 
"Plug 'artur-shaik/vim-javacomplete2'


"slimv
"Plug 'kovisoft/slimv'

" Code snippets 
"Plug 'SirVer/ultisnips'

" Auto close 
Plug 'jiangmiao/auto-pairs'

" Really fast linting for Java, python, Lua, Haskell, C#, C++
Plug 'dense-analysis/ale'


"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Themes 
Plug 'drewtempelmeyer/palenight.vim' 
Plug 'arcticicestudio/nord-vim'  
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'jnurmine/zenburn'

Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'tanvirtin/monokai.nvim'
Plug 'tomasr/molokai'
Plug 'ghifarit53/tokyonight-vim'
Plug 'rakr/vim-one'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()


