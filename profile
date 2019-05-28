export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/google-chrome-stable

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



## Custom scripts
export PATH="$PATH:$HOME/.custom-scripts"

## yarn bin files
export PATH="$PATH:$HOME/.yarn/bin"


## Composer bin files
COMPOSER_DIR="$HOME/.config/composer";
export PATH="$PATH:$COMPOSER_DIR/vendor/bin"

alias sync-dotfiles='rcup -v -S backups -S bundle -S undodir'
alias valet="$COMPOSER_DIR/vendor/bin/valet"


export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

## disable SIGSTOP signal
stty -ixon
