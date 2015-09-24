# dotfiles

Everything is [stow][1] installable.

For VIM (assuming `pwd` == /path/to/dotfiles):

    mkdir ~/.vim
    stow vim

This will prevent stow from making a single symlink to .vim and then VIM addons installation will not pollute the git repo.

[1]: https://www.gnu.org/software/stow/
