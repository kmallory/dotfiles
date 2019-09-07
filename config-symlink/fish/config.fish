set POWERLINE_COMMAND powerline-client

#alias gvim='/usr/local/bin/gvim'
alias view='/usr/local/bin/mvim -M'
alias vim='/usr/local/bin/vim'
alias eclim='/Applications/eclipse/eclipse/plugins/org.eclim_2.4.0/bin/eclim'
alias dog='cd ~/development/pwd/'
alias dogasp='cd ~/Downloads/pwd/asp'
alias dogr='cd /Volumes/pwdhld-devel'
alias dogprod='cd /Volumes/pwd'
alias gh='cd ~/github'
alias be='bundle exec'
alias qar="$RAILS_ROOT/test/tools/qarun.sh"
alias ecr="$RAILS_ROOT/test/tools/ecrun.sh"
alias yardsql='ssh -L 3307:ec2-54-152-126-181.compute-1.amazonaws.com:3306 deploy@ec2-54-152-126-181.compute-1.amazonaws.com'
alias python='python3'
alias pip='pip3'
#
set PATH /usr/local/bin $PATH /Users/kmallory/github/powerline-shell /Users/kmallory/bin /Users/kmallory/github/powerline-daemon /Users/kmallory/dotfiles/vim/vim.symlink/bundle/vim-powerline

set -x PWDHLDB_DATABASE_PASSWORD pwd0
set -x GIT_EDITOR /usr/bin/vim
set -x EDITOR /usr/local/bin/vim
set -x VISUAL /usr/local/bin/gvim
set -x RUBY_GC_MALLOC_LIMIT 60000000
set -x RUBY_GC_HEAP_FREE_SLOTS 200000
set -x RAILS_ROOT ~/development/pwd
#set -x RAILS_ENV development
set -x HINTS 'nohints'
set -x HOMEBREW_GITHUB_API_TOKEN 11a5807c029e6be6a862db47e0c5e7c763151ea8
set -x GOPATH $HOME/go
set ECLIPSE_HOME /Applications/eclipse/eclipse
set fish_function_path $fish_function_path "/Users/kmallory/github/powerline/powerline/bindings/fish"
#powerline/build/lib/powerline/bindings/fish"
set -g fish_greeting ""
set -g theme_powerline_fonts no


#set fish_path ~/github/oh-my-fish
#. $fish_path/init.fish
#Theme "clearance"
#Theme "bobthefish"
#Theme "GitStatus"
#Plugin "Theme"
#
#Plugin "git-flow"
#Plugin "tmux"
#Plugin "osx"
#Plugin "brew"
#Plugin "bundler"
#Plugin "gem"
#Plugin "node"
#Plugin "localhost"
#Plugin "rbenv"
#Plugin "vi-mode"

set NODE_ENV DEVELOPMENT
set -x PATH /usr/local/opt/openssl/bin /Applications $HOME/.rbenv/shims $GOPATH/bin $PATH
#set -x PATH /usr/local/go/bin /Applications $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
#powerline-setup

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

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

function repair
mysql -uroot -ppwd0 mysql -e 'repair table proc;'
end

function a2p
./asp2php -php5 -html -longexternvars -fulltags -change_response_links  $argv;
end

function grep
/usr/local/bin/ag $argv
end

function ack
/usr/local/bin/ag $argv
end

function mvi
/usr/bin/vi
end

function ls
/bin/ls -FG $argv
end

function fish_prompt
    powerline-shell.py --shell bare $status
end

