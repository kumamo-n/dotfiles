 #!/bin/bash

set -e

info() {
    echo -e "\033[34m$@\033[m"
}

warn() {
    echo -e "\033[33m$@\033[m"
}

error() {
    echo -e "\033[31m$@\033[m"
}

DIR=$(pwd)


if [[ ! -L $HOME/.dotfiles ]]; then
    info "---> Link dotfiles into HOME directory"
    ln -s $DIR $HOME/.dotfiles
fi


if [ ! -d ~/.zplug ]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi


