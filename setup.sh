#! /bin/sh

###
## git
#

# config
if [ -e ~/.gitconfig ]; then
  rm ~/.gitconfig
fi
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig


###
## gpg
#

# config
if [ -e ~/.gnupg/gpg.conf ]; then
  rm ~/.gnupg/gpg.conf
fi
ln -s ~/.dotfiles/gpg/gpg.conf ~/.gnupg/gpg.conf

# agent config
if [ -e ~/.gnupg/gpg-agent.conf ]; then
  rm ~/.gnupg/gpg-agent.conf
fi
ln -s ~/.dotfiles/gpg/gpg-agent.conf ~/.gnupg/gpg-agent.conf


###
## sh
#

# config
if [ -e ~/.profile ]; then
  rm ~/.profile
fi
ln -s ~/.dotfiles/sh/.profile ~/.profile

if [ -e ~/.profile--flm ]; then
  rm ~/.profile--flm
fi
ln -s ~/.dotfiles/sh/.profile--flm ~/.profile--flm


###
## ssh
#

# config
if [ -e ~/.ssh/config ]; then
  rm ~/.ssh/config
fi
ln -s ~/.dotfiles/ssh/config ~/.ssh/config


###
## vim
#

# config
if [ -e ~/.vimrc ]; then
  rm ~/.vimrc
fi
ln -s ~/.dotfiles/vim/.vimrc ~/.vimrc


###
## zsh
#

# theme
if [ -e ~/.oh-my-zsh/themes/carlyle.zsh-theme ]; then
  rm ~/.oh-my-zsh/themes/carlyle.zsh-theme
fi
ln -s ~/.dotfiles/zsh/carlyle.zsh-theme ~/.oh-my-zsh/themes/carlyle.zsh-theme
if ! grep --quiet "themes/carlyle.zsh-theme" ~/.oh-my-zsh/.git/info/exclude; then
  echo "themes/carlyle.zsh-theme" >> ~/.oh-my-zsh/.git/info/exclude
fi

# config
if [ -e ~/.zshrc ]; then
  rm ~/.zshrc
fi
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
