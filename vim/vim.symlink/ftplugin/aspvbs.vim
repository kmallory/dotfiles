compiler tidy
setlocal equalprg=tidy\ -config\ ~/.vim/tidy-aspvbs.conf\ -c\ -quiet\ -e\ %
setlocal makeprg=tidy\ -config\ ~/.vim/tidy-aspvbs.conf\ -c\ -quiet\ -e\ %
set number
