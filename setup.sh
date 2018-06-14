 DOT_FILES=(.vimrc .tmux.conf .zshrc)

 for file in ${DOT_FILES[@]}
 do
     ln -s $HOME/dotfiles/$file $HOME/$file
 done
