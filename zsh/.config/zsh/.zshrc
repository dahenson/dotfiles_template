#!/usr/bin/env zsh

# Clone zcomet if necessary
if [[ ! -f ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh ]]; then
  command git clone https://github.com/agkozak/zcomet.git ${ZDOTDIR:-${HOME}}/.zcomet/bin
fi
source ${ZDOTDIR:-${HOME}}/.zcomet/bin/zcomet.zsh

# Load some plugins
zcomet load zsh-users/zsh-autosuggestions
zcomet load ohmyzsh plugins/ssh-agent

if [[ $PLATFORM == "linux" ]]; then
  [[ -d "/home/linuxbrew/.linuxbrew" ]] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
else
  [[ -d "/opt/homebrew" ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# NOTE: source order matters!
for file in $ZDOTDIR/components/{env,opts,asdf,aliases,colors,completion}.zsh; do
  # shellcheck disable=SC1090
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Get in the starship
eval "$(starship init zsh)"

# Run compinit and compile its cache
zcomet compinit
