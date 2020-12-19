# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

source ~/.exports

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="kardan"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=2
# Update without asking
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew osx python pip screen vi-mode vundle web-search history-substring-search nmap aws redis-cli virtualenvwrapper)

export PATH=$(brew --prefix)/opt/python/libexec/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias gtwhois="whois -h who.is.gatech.edu $1"
alias ls="ls -lahG"
alias diff="diff -u"

# Fix numeric keypad
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[On" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ol" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"

# Fix history substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
