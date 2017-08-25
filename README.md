# .dotfiles

A collection of config files and helpful scripts

To create/update the current links, just run `./setup.sh`

## Initial Setup

* Install [Hyper](https://hyper.is/)
* Install [VS Code](https://code.visualstudio.com/)
* Install the latest macOS updates
```
sudo softwareupdate --install --all
```
* Install the XCode Developer Tools
```
xcode-select --install
```
* Install [Homebrew](https://brew.sh/)
* Install `git` and `git-lfs`
```
brew install git git-lfs && git lfs install
```
* Install `vim`
```
brew install macvim
```
* Install [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh)
* Install [`nvm`](https://github.com/creationix/nvm)
* Install [`direnv`](https://github.com/direnv/direnv)

## .dotfiles

* Clone this repository
```
git clone https://github.com/carlyle/.dotfiles ~/.dotfiles
```
* Link .dotfiles
```
cd ~/.dotfiles
./setup.sh
```

## GPG/Yubikey

* Install [GPG Tools](https://gpgtools.org/)
* Set up Yubikey
