set POWERLINE_COMMAND powerline-client
function a2p
        ./asp2php -php5 -html -longexternvars -fulltags -change_response_links  $argv;
        end
function grep
/usr/local/bin/ack $argv
end
function mvi
/usr/bin/vi
end
function ls
           /bin/ls -FG $argv
 end
 function  xitunes
 ssh itunes Xnest :1 -geometry 1280x1024 -ac
 end
 function  xlinux
		 ssh linux Xnest :1 -geometry 1280x1024 -ac
 end
 function  xc7
		 ssh c7 Xnest :1 -geometry 1280x1024 -ac
 end
alias gvim='/usr/local/bin/gvim'
alias view='/usr/local/bin/mvim -M'
alias vim='/usr/local/bin/vi'
alias eclim='/Applications/eclipse/eclipse/plugins/org.eclim_2.4.0/bin/eclim'
alias dog='cd ~/Downloads/pwd'
alias dogr='cd /Volumes/pwdhld-devel'
alias dogprod='cd /Volumes/pwd'
alias gh='cd ~/Documents/github'
alias grep='ack'
#
set PATH /usr/local/bin $PATH /Users/kmallory/bin /Users/kmallory/dotfiles/vim/vim.symlink/bundle/powerline ~/.rvm/bin
set GIT_EDITOR /usr/local/bin/vim
set EDITOR /usr/local/bin/vim
set VISUAL /usr/local/bin/vim
. /Users/kmallory/Documents/github/powerline/powerline/bindings/fish/powerline-setup.fish
set ECLIPSE_HOME /Applications/eclipse/eclipse
#set fish_function_path $fish_function_path "/Users/kmallory/dotfiles/vim/vim.symlink/bundle/powerline/powerline/bindings/fish"
powerline-setup
set fish_greeting ""

set NODE_ENV DEVELOPMENT

