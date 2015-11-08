# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jtriley"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump colored-man catimg colorize history nyan vim-interaction vi-mode)

source $ZSH/oh-my-zsh.sh
#source ~/.shell_prompt.sh
#ZLE_RPROMPT_INDENT=0
#LPROMPT_INDENT=0

eval `dircolors ~/dotfiles/dir_colors`

# Customize to your needs...
alias xclip='xclip -selection clipboard'
alias sa='sudo aptitude'
alias sai='sa install'
alias sau='sa update'
alias sap='sa upgrade'
alias saup='sau; sap'

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ll='ls -l'
alias la='ll -a'
#alias tmux='TERM=gnome-256color tmux'

alias fray1='ssh niklmate@fray1.fit.cvut.cz'
alias webdev-ssh='ssh niklmate@local.webdev.fit.cvut.cz'
#alias jca='javac -cp .:/home/asd/coursera/algs4/algs4/algs4.jar:/home/asd/coursera/algs4/algs4/stdlib.jar'
#alias ja='java -cp .:/home/asd/coursera/algs4/algs4/algs4.jar:/home/asd/coursera/algs4/algs4/stdlib.jar'

#alias star='ssh niklmate@star.fit.cvut.cz'
alias tddc90='ssh matni856@marsix.ida.liu.se'

setopt extended_glob
