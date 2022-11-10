

# term
export COLORTERM=${COLORTERM:=truecolor}

# editors
export EDITOR="nvim"
export VISUAL="$EDITOR"
export SUDO_EDITOR="$EDITOR"
export GIT_EDITOR="$EDITOR"
export ALTERNATE_EDITOR="vim"

# starship
export STARSHIP_LOG="error"

# -- asdf
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# export ASDF_DIR="$HOME/.asdf"
# export ASDF_SHIMS="$ASDF_DIR/shims"
# export ASDF_BIN="$ASDF_SHIMS"
# export ASDF_INSTALLS="$ASDF_DIR/installs"

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
