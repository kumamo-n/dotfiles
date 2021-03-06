#  General
#-----------------------------------------------
export LANG=ja_JP.UTF-8
export EDITOR=vim

export LSCOLORS='Gxfxcxdxbxegedabagacad'

#  Path
#-----------------------------------------------
# dotfiles
export DOTFILES_PATH="$HOME/dotfiles"

# golang
export GOPATH=$HOME/go

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

# heroku
export PATH=$PATH:/usr/local/heroku/bin


#  Git
#-----------------------------------------------
export GIT_MERGE_AUTOEDIT='no'


#  Rails
#-----------------------------------------------
export DISABLE_SPRING=1


#  Anyenv
#-----------------------------------------------
if [ -d $HOME/.anyenv ] && command -v 'anyenv' > /dev/null 2>&1; then
  eval "$(anyenv init -)"
fi


#  Aliases
#-----------------------------------------------
alias kube='envchain wtd kube'
