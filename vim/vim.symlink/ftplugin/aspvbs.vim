    compiler tidy
    setlocal equalprg=tidy\ -config\ c:\bin\tidy-aspvbs.conf\ -c\ -quiet\ -e\ %
    setlocal makeprg=tidy\ -config\ c:\bin\tidy-aspvbs.conf\ -c\ -quiet\ -e\ %
    set number
