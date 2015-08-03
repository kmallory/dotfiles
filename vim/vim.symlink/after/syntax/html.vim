" Language:    CoffeeScript
" Maintainer:  Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

" Syntax highlighting for text/coffeescript script tags
syn include @htmlCoffeeScript syntax/coffee.vim
syn region coffeeScript start=+<script [^>]*type *=[^>]*text/coffeescript[^>]*>+
\                       end=+</script>+me=s-1 keepend
\                       contains=@htmlCoffeeScript,htmlScriptTag,@htmlPreproc
" add folding of tags, except for those that have no closing tag (must close
" optional tags though, or the folding will be thrown off)
syn region SynFold
      \ start="\v\<%(param|link|isindex|input|hr|frame|col|br|basefont|base|area|img|meta)@!\z([a-z]+)%(\_s[^>]*[^>/])*\>"
      \ end="</\z1>"
      \ transparent fold keepend extend
      \ containedin=ALLBUT,htmlComment

" kill the excessive whitespace on linebreaks, etc.
syn match htmlLinkWhite "\_s\{2,\}" contained containedin=htmlLink
hi default link htmlLinkWhite Ignore
