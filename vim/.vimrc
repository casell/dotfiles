" vim-addon-manager configuration
set nocompatible | filetype indent plugin on | syn on

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'

  " Force your ~/.vim/after directory to be last in &rtp always:
  " let g:vim_addon_manager.rtp_list_hook = 'vam#ForceUsersAfterDirectoriesToBeLast'

  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 https://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif

  " This provides the VAMActivate command, you could be passing plugin names, too
  call vam#ActivateAddons([], {})
endfun
call SetupVAM()

" Installing plugins
" Colorscheme
" VAMActivate Solarized
VAMActivate Distinguished
" Statusline
VAMActivate vim-airline
" csv (shows columns)
VAMActivate csv
" Editorconfig conventions loader
VAMActivate editorconfig-vim
" Python related plugin
VAMActivate Python-mode-klen
" Sensible defaults
VAMActivate sensible

" python-mode configuration
let g:pymode_lint_checkers = "pyflakes,pep8,mccabe,pylint"
let g:pymode_lint_on_write = 1
let g:pymode_lint_ignore="C0111,E501"
let g:pymode_indent = 1
let g:pymode_folding = 1

" Indentation default
set ts=4 sts=4 sw=4 et

" XML configurations
let g:xml_syntax_folding = 1
au FileType xml setlocal foldmethod=syntax
au FileType xsd setlocal foldmethod=syntax

" Javascript configurations
au FileType javascript setlocal makeprg=jslint\ %
au FileType javascript setlocal errorformat=%-P%f,
            \%A%>%\\s%\\?#%*\\d\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
            \%-G%f\ is\ OK.,%-Q
au FileType javascript map <F4> :w<CR>:make<CR>:redraw<CR>:cw<CR>

" Navigate through quickfixes with F5/F6
nmap <F5> :cprev<CR>
nmap <F6> :cnext<CR>

" Colorscheme
set background=dark
colorscheme distinguished
