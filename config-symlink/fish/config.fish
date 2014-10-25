set POWERLINE_COMMAND powerline-client

alias gvim='/usr/local/bin/gvim'
alias view='/usr/local/bin/mvim -M'
alias vim='/usr/local/bin/vi'
alias eclim='/Applications/eclipse/eclipse/plugins/org.eclim_2.4.0/bin/eclim'
alias dog='cd ~/Downloads/pwd'
alias dogr='cd /Volumes/pwdhld-devel'
alias dogprod='cd /Volumes/pwd'
alias gh='cd ~/Documents/github'
#
set PATH /usr/local/bin $PATH /Users/kmallory/bin /Users/kmallory/dotfiles/vim/vim.symlink/bundle/powerline
set GIT_EDITOR /usr/local/bin/vim
set EDITOR /usr/local/bin/vim
set VISUAL /usr/local/bin/vim
. /Users/kmallory/Documents/github/powerline/powerline/bindings/fish/powerline-setup.fish
set ECLIPSE_HOME /Applications/eclipse/eclipse
set fish_function_path $fish_function_path "/Users/kmallory/dotfiles/vim/vim.symlink/bundle/powerline/powerline/bindings/fish"
powerline-setup
set fish_greeting ""

set fish_path /Users/kmallory/Documents/github/oh-my-fish
set fish_theme clearance
set fish_plugins git osx ruby brew emoji-clock bundler gem node localhost rbenv rails vi-mode
. $fish_path/oh-my-fish.fish
set NODE_ENV DEVELOPMENT
set -x PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

function rbenv_shell
  set -l vers $argv[1]

  switch "$vers"
    case '--complete'
      echo '--unset'
      echo 'system'
      exec rbenv-versions --bare
      return
    case '--unset'
      set -e RBENV_VERSION
    case ''
      if [ -z "$RBENV_VERSION" ]
        echo "rbenv: no shell-specific version configured" >&2
        return 1
      else
        echo "$RBENV_VERSION"
      end
    case '*'
      rbenv prefix "$vers" > /dev/null
      set -g -x RBENV_VERSION "$vers"
  end
end

function rbenv
  set -l command $argv[1]
  [ (count $argv) -gt 1 ]; and set -l args $argv[2..-1]

  switch "$command"
    case shell
      rbenv_shell $args
    case '*'
      command rbenv $command $args
  end
end
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
