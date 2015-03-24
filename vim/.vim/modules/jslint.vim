" Javascript configurations
au FileType javascript setlocal makeprg=jslint\ %
au FileType javascript setlocal errorformat=%-P%f,
            \%A%>%\\s%\\?#%*\\d\ %m,%Z%.%#Line\ %l\\,\ Pos\ %c,
            \%-G%f\ is\ OK.,%-Q
au FileType javascript map <F4> :w<CR>:make<CR>:redraw<CR>:cw<CR>
