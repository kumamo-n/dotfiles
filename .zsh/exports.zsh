#  General
#---------------------------------------

export LANG=ja_JP.UTF-8

# OS
#---------------------------------------
case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        #Linux用の設定
        alias ls='ls -F --color=auto'
        ;;
esac

#  Path
#-----------------------------------------------
# dotfiles
export DOTFILES_PATH="$HOME/dotfiles"

# golang
export GOPATH=$HOME/.go

# anyenv
export ANYENV_DIR=$HOME/.anyenv

# tmux
export TMUX_RESURRECT_SCRIPTS_PATH=~/.tmux/plugins/tmux-resurrect/scripts


#  Search path
#-----------------------------------------------
# local
export PATH=/usr/local/bin:$PATH

# anyenv
export PATH=$ANYENV_DIR/bin:$PATH

# dotfiles
export PATH=$DOTFILES_PATH/bin:$PATH

# golang
export PATH=$PATH:$GOPATH/bin

