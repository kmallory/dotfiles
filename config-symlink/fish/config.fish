function mvi 
/usr/bin/vi 
end
function ls
           /bin/ls -FG $argv
 end
 function  xlinux 
		 ssh linux Xnest :1 -geometry 1280x810 -query localhost 
 end 
alias gvim='/usr/local/bin/gvim' 
alias vim='/usr/local/bin/vim'
alias view='/usr/local/bin/mvim -M'
alias eclim='/Applications/eclipse/eclipse/plugins/org.eclim_2.4.0/bin/eclim'
alias dog='cd ~/Downloads/pwd'
alias dogr='cd /Volumes/pwdhld-devel'
alias dogprod='cd /Volumes/pwd'
alias gh='cd ~/Documents/github'
#
set PATH /usr/local/bin $PATH /Users/kmallory/bin /Users/kmallory/Documents/github/powerline/scripts ~/.rvm/bin
set GIT_EDITOR /usr/local/bin/vim 
set EDITOR /usr/local/bin/vim 
set VISUAL /usr/local/bin/vim 
. /Users/kmallory/Documents/github/powerline/powerline/bindings/fish/powerline-setup.fish
set ECLIPSE_HOME /Applications/eclipse/eclipse
set fish_function_path $fish_function_path "/Users/kmallory/Documents/github/powerline/powerline/bindings/fish"
powerline-setup
 set fish_greeting ""

set NODE_ENV DEVELOPMENT

