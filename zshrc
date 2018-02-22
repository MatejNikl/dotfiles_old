# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh

# Oh-my-zsh theme.
ZSH_THEME="jtriley"

# Red dots displayed while waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Loaded plugins.
plugins=(autojump colored-man-pages catimg colorize cp history nyan vim-interaction vi-mode)

# Bind 'jk' to command mode.
bindkey -M viins 'jk' vi-cmd-mode

# Load zmv batch renaming.
autoload zmv
alias zmv='noglob zmv -W'

# Use oh-my-zsh!
source $ZSH/oh-my-zsh.sh

# Shift+Tab for reverse completion menu traversal.
bindkey '^[[Z' reverse-menu-complete

# Use extended globbing (such as **/foo or ^foo), see
# http://www.refining-linux.org/archives/37/ZSH-Gem-2-Extended-globbing-and-expansion/
setopt extended_glob

# Cool colors is ls, dir, grep, ...
eval `dircolors ~/dotfiles/dir_colors`

# ... and use those colors actually.
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'

# Aptitude aliases.
alias sa='sudo aptitude'
alias sai='sa install'
alias sau='sa update'
alias sap='sa upgrade'
alias saup='sau; sap'

# Meh.
alias ll='ls -l'
alias la='ll -a'
alias vlc='vlc --avcodec-hw vaapi --vout glx'

# Git aliases.
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gps='git push'
alias gpl='git pull'

# Gurobi setup
export GUROBI_HOME=/opt/gurobi/gurobi702/linux64
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GUROBI_HOME/lib

# Torch setup
. /home/aoe/torch/install/bin/torch-activate

# Miniconda setup
export PATH="/home/aoe/miniconda3/bin:$PATH"
