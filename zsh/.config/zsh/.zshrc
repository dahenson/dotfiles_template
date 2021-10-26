#!/usr/bin/env zsh

# Clone zcomet if necessary
if [[ ! -f ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh ]]; then
  command git clone https://github.com/agkozak/zcomet.git ${ZDOTDIR:-${HOME}}/.zcomet/bin
fi
source ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh

# Load some plugins
zcomet load zsh-users/zsh-autosuggestions

# NOTE: source order matters!
for file in $ZDOTDIR/components/{opts,asdf,fzf,aliases,functions,colors,keybindings,completion,ssh,tmux}.zsh; do
  # shellcheck disable=SC1090
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Get in the starship
eval "$(starship init zsh)"

# Run compinit and compile its cache
zcomet compinit
