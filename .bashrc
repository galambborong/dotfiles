#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export BROWSER=brave
export VISUAL=nvim
export EDITOR="$VISUAL"

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# General aliases
alias vim='nvim'

# Git related aliases
alias gs='git status'
alias gc='git commit -S -a -m'            # NB, this must be followed by a comment
alias gp='git remote | xargs -L1 git push --all'
alias gpf='git pull --ff'
alias config='/usr/bin/git --git-dir=$HOME/.zdotfiles/ --work-tree=$HOME'

# Python virtual env stuff
alias act='. ./venv/bin/activate'
alias dact='deactivate'

# Mullvad toggles
alias mlby='mullvad block-when-disconnected set on'
alias mlbn='mullvad block-when-disconnected set off'

# switch between shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
