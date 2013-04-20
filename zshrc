# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"
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
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler debian gem git-extras heroku rails3 rvm sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=$PATH:/usr/local/heroku/bin:/home/diego/.rvm/gems/ruby-1.9.3-p385/bin:/home/diego/.rvm/gems/ruby-1.9.3-p385@global/bin:/home/diego/.rvm/rubies/ruby-1.9.3-p385/bin:/home/diego/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/diego/.scripts

# RVM

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
