set POWERLINE_COMMAND powerline-client

#alias gvim='/usr/local/bin/gvim'
alias view='/usr/local/bin/gvim -M'
#alias vim='/usr/local/bin/vim'
alias eclim='/Applications/eclipse/eclipse/plugins/org.eclim_2.4.0/bin/eclim'
alias dog='cd ~/development/pwd/'
alias dog-deploy='cd ~/development/pwd-deploy/'
alias rails5='cd ~/development/pwd-rails5/'
alias dogr='cd /Volumes/pwdhld-devel'
alias gh='cd ~/github'
alias be='bundle exec'
alias qar="$RAILS_ROOT/test/tools/qarun.sh"
alias ecr="$RAILS_ROOT/test/tools/ecrun.sh"
alias goqa="ssh deploy@ec2-54-204-87-239.compute-1.amazonaws.com"
alias goprod="ssh deploy@ec2-54-152-126-181.compute-1.amazonaws.com"
alias yardsql='ssh -L 3307:ec2-54-152-126-181.compute-1.amazonaws.com:3306 deploy@ec2-54-152-126-181.compute-1.amazonaws.com'
alias yardqasql='ssh -L 3307:ec2-54-204-87-239.compute-1.amazonaws.com:3306 deploy@ec2-54-204-87-239.compute-1.amazonaws.com'
alias python='python3'
alias pip='pip3'
alias ey='ey-core'
#
set PATH /usr/local/opt/gnu-sed/libexec/gnubin /usr/local/bin /usr/local/opt/bison/bin $PATH /Users/kmallory/github/powerline-shell /Users/kmallory/bin /Users/kmallory/github/powerline-daemon /Users/kmallory/dotfiles/vim/vim.symlink/bundle/vim-powerline

set -x PWDHLDB_DATABASE_PASSWORD pwd0
set -x CHROME_BINARY_PATH "/Applications/shareware/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary"
set -x CHROME_BINARY_PATH "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
set -x GIT_EDITOR /Users/kmallory/bin/gvim
set -x EDITOR /Users/kmallory/bin/gvim
set -x VISUAL /Users/kmallory/bin/gvim
set -x RUBY_GC_MALLOC_LIMIT 60000000
set -x RUBY_GC_HEAP_FREE_SLOTS 200000
set -x RAILS_ROOT ~/development/pwd
set -x PWDHLL_GEOCODE_DAYS 30
#set -x RAILS_ENV development
set -x HINTS 'nohints'
set -x HOMEBREW_GITHUB_API_TOKEN 78a686cb12f3ee42fd001ff71d5f172d1b5f9be4
set -x GOPATH $HOME/go
set ECLIPSE_HOME /Applications/eclipse/eclipse
set fish_function_path $fish_function_path "/Users/kmallory/github/powerline/powerline/bindings/fish"
set -g fish_key_bindings fish_default_key_bindings
set -g theme_display_ruby no
set -g theme_display_user ssh
set -g theme_title_display_process yes
set -g theme_color_scheme nord
#powerline/build/lib/powerline/bindings/fish"
#
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

set -g theme_display_user yes
set -g theme_hide_hostname yes
set -g default_user kmallory

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
mysql -uroot -ppwd0 mysql -e "repair table proc;"
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

#function fish_prompt
    #powerline-shell.py --cwd-max-dir-size 5 --shell bare --colorize-hostname --mode compatible $status ^/dev/null
#end

