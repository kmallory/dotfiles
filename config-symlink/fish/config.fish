set POWERLINE_COMMAND powerline-client

#alias gvim='/usr/local/bin/gvim'
alias view='/usr/local/bin/mvim -M'
alias vim='/usr/local/bin/vim'
alias eclim='/Applications/eclipse/eclipse/plugins/org.eclim_2.4.0/bin/eclim'
alias dog='cd /development/pwd/'
alias dogasp='cd ~/Downloads/pwd/asp'
alias dogr='cd /Volumes/pwdhld-devel'
alias dogprod='cd /Volumes/pwd'
alias gh='cd /github'
alias be='bundle exec'
alias qar="$RAILS_ROOT/test/tools/qarun.sh"
alias ecr="$RAILS_ROOT/test/tools/ecrun.sh"
alias yardsql='ssh -L 3307:ec2-54-152-126-181.compute-1.amazonaws.com:3306 deploy@ec2-54-152-126-181.compute-1.amazonaws.com'
#
set PATH /usr/local/bin $PATH /Users/kmallory/bin /Users/kmallory/dotfiles/vim/vim.symlink/bundle/vim-powerline

set -x PWDHLDB_DATABASE_PASSWORD pwd0
set -x GIT_EDITOR /usr/bin/vim
set -x EDITOR /usr/local/bin/vim
set -x VISUAL /usr/local/bin/gvim
set -x RUBY_GC_MALLOC_LIMIT 60000000
set -x RUBY_GC_HEAP_FREE_SLOTS 200000
set -x RAILS_ROOT /development/pwd
#set -x RAILS_ENV development
set -x HINTS 'nohints'
set -x HOMEBREW_GITHUB_API_TOKEN a5dea72e5a411c39300881fc76496d690e786033
set -x GOPATH $HOME/go
set ECLIPSE_HOME /Applications/eclipse/eclipse
set fish_function_path $fish_function_path "/github/powerline/powerline/bindings/fish"
set fish_function_path $fish_function_path "/Users/kmallory/Documents/github/powerline/build/lib/powerline/bindings/fish"
set fish_greeting ""

#set fish_path /github/oh-my-fish
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
set -x PATH /Applications $HOME/.rbenv/shims $PATH
#set -x PATH /usr/local/go/bin /Applications $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
powerline-setup

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
#
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
mysql -uroot -pgandalf0 mysql -e 'repair table proc;'
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
function  xitunes
ssh itunes Xnest :1 -geometry 1280x1024 -ac
end
function  xlinux
ssh linux Xnest :1 -geometry 1280x1024 -ac
end
function  xc7
ssh c7 Xnest :1 -geometry 1280x1024 -ac
end

function  rdb
 eval $RAILS_ROOT/test/tools/load-migrated.sh
rake db:rollback
rake db:migrate
 eval rails c < $RAILS_ROOT/test/tools/testing_passwords.rb
end
