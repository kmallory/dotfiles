 set fish_greeting ""
 function ls
           /bin/ls -FG $argv
 end
 function fish_prompt
         ~/powerline-shell.py $status --shell bare ^/dev/null
             end
alias dog='cd ~/Downloads/pwd'
alias dogr='cd /Volumes/c\$/pwd'
alias gvim='/Applications/Shareware/MacVim.app/Contents/MacOS/MacVim'
alias vim='/Applications/Shareware/MacVim.app/Contents/MacOS/Vim'
alias view='/Applications/Shareware/MacVim.app/Contents/MacOS/Vim'
alias vi='/Applications/Shareware/MacVim.app/Contents/MacOS/Vim'
#
set PATH /usr/local/bin $PATH /Users/kmallory/.gem/ruby/1.8/bin /Users/kmallory/Documents/github/powerline/scripts
set GIT_EDITOR /Applications/Shareware/MacVim.app/Contents/MacOS/Vim
set EDITOR /Applications/Shareware/MacVim.app/Contents/MacOS/Vim
set VISUAL /Applications/Shareware/MacVim.app/Contents/MacOS/Vim
. /Users/kmallory/Documents/github/powerline/powerline/bindings/fish/powerline-setup.fish
