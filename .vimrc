:syntax on
set number
:map <F7> :tabp<CR>
:map <F8> :tabn<CR>
:map ,html i<!DOCTYPE html><CR><html><CR><TAB><head><CR><TAB><link rel="stylesheet" type="text/css" href=""/><CR><BACKSPACE></head><CR><body><CR><TAB><CR></body><CR><BACKSPACE></html><ESC>kki
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set cindent
set autoindent
:map jprt iSystem.out.println(" ");<ESC>hhhi
:map jmain ipublic class {<CR>public static void main(String[] args){<CR>}<CR>}
set ttyfast
