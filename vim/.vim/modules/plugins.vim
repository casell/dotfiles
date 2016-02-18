set nomore

fun! SetupVIMPlug()
    if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    endif
    let g:plug_window = 'vertical botright 50new'
endfun
call SetupVIMPlug()

" Load plugin list
execute 'source' Dot('plugins.vim')

PlugStatus

" Load all plugin configuration files.
for file in split(glob(Dot('modules/plugins/*.vim')), '\n')
  exec 'source' file
endfor
