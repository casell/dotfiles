if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" YouCompleteMe
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clang-completer --go-completer --java-completer' }

Plug '/home/rcaselli/vimplugins/todocheck'

Plug 'godlygeek/tabular'

Plug 'plasticboy/vim-markdown'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'Exafunction/codeium.vim', { 'branch': 'main' }

call plug#end()
