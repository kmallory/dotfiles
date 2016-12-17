# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/kmallory/.local/share/omf"

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG "/Users/kmallory/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set POWERLINE_COMMAND powerline-client

#alias gvim='/usr/lo#cal/bin/gvim'
#w
#set -gx VIM_APP_DIR ~/Documents/github/macvim/src/MacVim/build/Release/
alias gvim='~/bin/gvim'
alias view='/usr/local/bin/mvim -M'
alias vim='/usr/local/bin/vim'
alias eclim='/Applications/eclipse/eclipse/plugins/org.eclim_2.4.0/bin/eclim'
alias dog='cd /development/pwd/'
alias dogasp='cd /development/pwd/asp'
alias gh='cd /github'
alias z='zeus'
alias be='bundle exec'
alias qar='test/tools/qarun.sh'
alias q='test/tools/qarun.sh'
alias z='zeus'
alias yardsql='ssh -L 3307:ec2-54-152-126-181.compute-1.amazonaws.com:3306 deploy@ec2-54-152-126-181.compute-1.amazonaws.com'
#
set PATH /usr/local/bin $PATH /Users/kmallory/bin /Users/kmallory/dotfiles/vim/vim.symlink/bundle/vim-powerline /github/depot_tools /Users/kmallory/go/bin

set -x title 'PWD Health and Litter Log'
set -x COMPOSE_PROJECT_NAME pwdhll
set -x PWDHLDB_DATABASE_PASSWORD pwd0
set -x GIT_EDITOR /usr/bin/vim
set -x EDITOR /usr/local/bin/vim
set -x VISUAL /usr/local/bin/gvim
set -x RUBY_GC_MALLOC_LIMIT 60000000
set -x RUBY_GC_HEAP_FREE_SLOTS 200000
set -x RAILS_ROOT /development/pwd
#set -x RAILS_ENV development
set -x HINTS 'nohints'
set -x HOMEBREW_GITHUB_API_TOKEN dabe85d1da0feec4c3813bcf709b26e079ee118c
set -x GOPATH $HOME/go
set ECLIPSE_HOME /Applications/eclipse/eclipse
set fish_function_path $fish_function_path "/Users/kmallory/dotfiles/vim/vim.symlink/bundle/powerline/powerline/bindings/fish"
set fish_function_path $fish_function_path "/github/powerline/build/lib/powerline/bindings/fish"
set fish_greeting ""



#set fish_plugins git osx ruby brew emoji-clock bundler gem node localhost rbenv rails vi-mode
set NODE_ENV DEVELOPMENT
set -x PATH /usr/local/go/bin /Applications $HOME/.rbenv/shims $PATH
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
