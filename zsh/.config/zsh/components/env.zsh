

# term
export COLORTERM=${COLORTERM:=truecolor}

# editors
export EDITOR="nvim"
export VISUAL="$EDITOR"
export SUDO_EDITOR="$EDITOR"
export GIT_EDITOR="$EDITOR"
export ALTERNATE_EDITOR="vim"

# lang
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export TZ="/usr/share/zoneinfo/US/Central"

# path
path=(
  $HOME/bin
  $HOME/.bin
  $path
)
