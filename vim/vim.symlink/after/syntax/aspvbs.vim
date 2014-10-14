compiler tidy
set foldmethod=indent
setlocal makeprg=tidy\ -config\ ~/.vim/tidy-aspvbs.conf\ -c\ -quiet\ -e\ %
set number

let g:filetype_asa = "aspvbs"
let g:filetype_asp = "aspvbs"

autocmd BufWritePost <buffer> make
