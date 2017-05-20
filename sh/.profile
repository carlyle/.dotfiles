###
## Path
##

# Android
export ANDROID_HOME="~/Library/Android/sdk"

# Set up PATH
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"


###
## Tools
#

# Editor
export EDITOR="/usr/bin/vim"

# Git
alias gap="git add --patch"

# GPG/SSH
source ~/.dotfiles/gpg/gpg-init-ssh.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
source ~/.dotfiles/nvm/nvm-auto-use.sh
