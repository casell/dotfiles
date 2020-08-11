call plug#begin(expand('$HOME', 1) . '/.vim/vim-addons')

" Colorscheme
Plug 'Lokaltog/vim-distinguished', { 'branch': 'develop' }

" Sensible defaults
Plug 'tpope/vim-sensible'

" Statusline
Plug 'bling/vim-airline'

" csv (shows columns)
Plug 'chrisbra/csv.vim'

" Editorconfig conventions loader
Plug 'editorconfig/editorconfig-vim'

" Python related plugin
" Plug 'klen/python-mode', {'branch: 'develop'}

" Syntastic
Plug 'scrooloose/syntastic'

" Indent guide
Plug 'nathanaelkane/vim-indent-guides'

" Undo Tree
Plug 'sjl/gundo.vim'

" SVG
Plug 'vim-scripts/svg.vim'

" HTML5
Plug 'othree/html5.vim'

Plug 'Quramy/tsuquyomi'

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" YouCompleteMe
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer --java-completer' }

Plug 'leafgarland/typescript-vim'

Plug '/home/rcaselli/vimplugins/todocheck'

Plug 'rykka/riv.vim'

Plug 'godlygeek/tabular'

Plug 'plasticboy/vim-markdown'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
