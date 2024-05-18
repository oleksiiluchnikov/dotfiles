# XDG Base Directory Specification
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"

# Set ZSH config directory
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# Source main ZSH config file
# shellcheck source=/dev/null
source "$ZDOTDIR/.zshrc"
