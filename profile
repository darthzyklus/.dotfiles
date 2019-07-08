
# General exports
export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export BROWSER=/usr/bin/google-chrome-stable

# General alias
alias sync-dotfiles='rcup -v -S backups -S bundle -S undodir'
alias valet="$COMPOSER_DIR/vendor/bin/valet"

# Add bin files ---------------------------------------

## Custom scripts
export PATH="$PATH:$HOME/.scripts"

## yarn bin files
export PATH="$PATH:$HOME/.yarn/bin"

## Composer bin files
COMPOSER_DIR="$HOME/.config/composer";
export PATH="$PATH:$COMPOSER_DIR/vendor/bin"

#------------------------------------------------------

# NVM loader
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# FZF settings
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Disable SIGSTOP signal
stty -ixon
