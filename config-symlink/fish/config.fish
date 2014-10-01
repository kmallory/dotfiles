 set fish_greeting ""
 function ls
           /bin/ls -FG $argv
 end
 #function fish_prompt
 #        ~/powerline-shell.py $status --shell bare ^/dev/null
 #            end
alias dog='cd ~/Downloads/pwd'
alias dogr='cd /Volumes/c\$/pwd'
alias gh='cd ~/Documents/github'
function gvim 
        /Applications/Shareware/MacVim.app/Contents/MacOS/MacVim  $argv
end 
function vi 
			/Applications/Shareware/MacVim.app/Contents/MacOS/Vim $argv
end

alias vim='/Applications/Shareware/MacVim.app/Contents/MacOS/Vim'
alias view='/Applications/Shareware/MacVim.app/Contents/MacOS/Vim'
#
set PATH /usr/local/bin $PATH /Users/kmallory/bin /Users/kmallory/Documents/github/powerline/scripts ~/.rvm/bin
set GIT_EDITOR /Applications/Shareware/MacVim.app/Contents/MacOS/Vim
set EDITOR /Applications/Shareware/MacVim.app/Contents/MacOS/Vim
set VISUAL /Applications/Shareware/MacVim.app/Contents/MacOS/Vim
. /Users/kmallory/Documents/github/powerline/powerline/bindings/fish/powerline-setup.fish
set ECLIPSE_HOME /Applications/eclipse/eclipse
set fish_function_path $fish_function_path "/Users/kmallory/Documents/github/powerline/powerline/bindings/fish"
powerline-setup

