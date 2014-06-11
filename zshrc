# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rublinks"
# ZSH_THEME="blinks"
# ZSH_THEME="ys"
# ZSH_THEME="suvash"
# ZSH_THEME="fino"
# ZSH_THEME="wedisagree"
# ZSH_THEME="terminalparty"
# ZSH_THEME="sorin"
# ZSH_THEME="smt"
# ZSH_THEME="kphoen"
# ZSH_THEME="crunch"
# ZSH_THEME="clean"
# ZSH_THEME="agnoster"
# ZSH_THEME="dallas"
# ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler debian gem git-extras heroku rails3 rvm sublime history autojump zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# default editor
export EDITOR='vim'
export ALTERNATE_EDITOR='vim'

# make .ackrc local for ack-grep
export ACKRC=".ackrc"

# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr

PATH=$PATH:~/.scripts

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# ALIASES
# rspec
alias t='rspec --drb'

# navigation
alias go='cd /home/diego/stuff/code/'

# bundler
alias be='bundle exec'
alias bi='bundle install --binstubs'

# docs
alias docs='yard server --gems'

# rails
alias r='rails'
alias rs='rails server thin'
alias rg='rails generate'
alias rc='rails console'
alias rd='rails dbconsole'
alias krs='kill $(lsof -i :3000 -t)' # kill rails server

# rake
alias rk='bundle exec rake'

# git
alias gs='git status'
alias ga='git add .'
alias gl='git lg'
alias gl1='git lg1'
alias gc='git commit -v'
alias gi='git add -i'
alias gd='git diff'
alias gds='git diff --staged'
alias gco='git checkout'

# rake tasks
# alias dbr='rake db:migrate:reset && rake db:seed && annotate && rake db:test:prepare'
# alias dbr='rake db:migrate:reset && rake db:seed && rake db:test:prepare'
alias dbr='rake db:migrate:reset && rake db:import && rake db:test:prepare'
alias pop='rake populate:all --trace'
alias cov='rake spec:rcov'
alias migrate_prod='rake db:migrate RAILS_ENV=production'

# postgres
alias dump='pg_dump obrasenlinea_production > production.sql'
alias prod2dev='dump && rake db:drop && rake db:create && psql obrasenlinea_development < production.sql'

# Heroku
alias hkpush='heroku db:push postgres://diego:diego@127.0.0.1/obrasenlinea_production?encoding=utf8'
alias hkpull='heroku db:pull postgres://diego:diego@127.0.0.1/obrasenlinea_production?encoding=utf8'
alias hkpull_dev='heroku db:pull postgres://diego:diego@127.0.0.1/obrasenlinea_development?encoding=utf8'
# alias hkbackup='heroku pgbackups:capture --expire --app obrasenlinea'
alias hkbackup='heroku pgbackups:capture --expire --app '
# alias hkurl='heroku pgbackups:url --app obrasenlinea'
alias hkurl='heroku pgbackups:url --app '
# alias hkdl='curl -o heroku.dump `hkurl obrasenlinea` '
alias hkdl='curl -o heroku.dump '
# alias hk2dev='pg_restore -v -c -x -O  -d obrasenlinea_development oel.dump'
alias hk2dev='pg_restore -v -c -x -O  -d '

# BACKUP
alias bkp='rsync -va --del --progress --log-file=/home/diego/.backup.log --exclude-from=/home/diego/.rsync/exclude /home/diego /media/backup/'
alias bkp2='rsync -va --del --modify-window=1 --progress --log-file=/home/diego/.backup.log --exclude-from=/home/diego/.rsync/exclude /home/diego /media/diego/toshiba_bkp/'

# Alert
alias alert_helper='history|tail -n1|sed -e "s/^\s*[0-9]\+\s*//" -e "s/;\s*alert$//"'
alias alert='notify-send -i /usr/share/icons/gnome/32×32/apps/gnome-terminal.png "[$?] $(alert_helper)"'

# tmux 256 colors
[ -z "$TMUX" ] && export TERM=xterm-256color

# GLOBAL ALIASES
alias -g G='| grep --color'
alias -g L='| less'

# RVM

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
