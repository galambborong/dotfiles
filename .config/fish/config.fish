# ------------------------------------------------------------
#               _            _
#    _ __   ___| |_ ___ _ __| | _____  ___ _ __   __ _ _ __
#   | '_ \ / _ \ __/ _ \ '__| |/ / _ \/ _ \ '_ \ / _` | '_ \
#   | |_) |  __/ ||  __/ |  |   <  __/  __/ | | | (_| | | | |
#   | .__/ \___|\__\___|_|  |_|\_\___|\___|_| |_|\__,_|_| |_|
#   |_|
#       
#   peterkeenan.co.uk // galambborong
# ------------------------------------------------------------

### FISH config ###


### EXPORTS ###

set VISUAL nvim
set EDITOR nvim
set BROWSER firefox


### VI MODE ###

function fish_user_key_bindings
	fish_vi_key_bindings
end

### NVM ###

# load_nvm

### AUTOCOMPLETE AND HIGHLIGHTING ###

set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan


# General aliases
alias vim='nvim'

# Git related aliases
alias gs='git status'
alias gc='git commit -S -a -m'            # NB, this must be followed by a comment
alias gp='git remote | xargs -L1 git push --all'
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

