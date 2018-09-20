for file in ~/.zsh/src/{exports,aliases}.zsh; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file


#  Anyenv
#-----------------------------------------------
if [ -d $HOME/.anyenv ] && command -v 'anyenv' > /dev/null 2>&1; then
  eval "$(anyenv init -)"
fi
