compiler tidy
set foldmethod=indent
"set foldmethod=syntax
setlocal equalprg=tidy\ -config\ ~/.vim/tidy-aspvbs.conf\ -c\ -quiet\ -e\ %
setlocal makeprg=tidy\ -config\ ~/.vim/tidy-aspvbs.conf\ -c\ -quiet\ -e\ %
set number

let g:filetype_asa = "aspvbs"
let g:filetype_asp = "aspvbs"

