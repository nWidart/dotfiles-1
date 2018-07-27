# path, the 0 in the filename causes this to load first
#path=(
#  $path
#  $HOME/.yadr/bin
#  $HOME/.yadr/bin/yadr
#  $HOME/.composer/vendor/bin
#)

#export MAMP_PATH=/Applications/MAMP/bin/php/php7.0.15/bin
#export PATH="$MAMP_PATH:$PATH"


pathAppend() {
  # Only adds to the path if it's not already there
  if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
    PATH=$PATH:$1
  fi
}

# Remove duplicate entries from PATH:
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')

pathAppend "$HOME/.yadr/bin"
pathAppend "$HOME/.yadr/bin/yadr"
pathAppend "$HOME/.composer/vendor/bin"
pathAppend "$HOME/.yadr/bin"
pathAppend "$HOME/.yadr/bin/yadr"
pathAppend "$HOME/Library/Python/3.5/bin"

# export PATH=/Applications/MAMP/bin/php/php7.1.12/bin:$PATH
export PATH=/Applications/MAMP/bin/php/php7.2.1/bin:$PATH
