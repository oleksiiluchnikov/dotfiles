ZSH_THEME="hyperzsh"
SOLARIZED_THEME="dark"

eval "$(starship init zsh)"

export PUNCTUAL_SHOW_HOSTNAME=false
export PUNCTUAL_CURRENT_DIR_COLOUR=yellow

bindkey -v
export KEYTIMEOUT=1

export LANG=en_US.UTF-8

autoload -Uz compinit; compinit
_comp_options+=(globdots) # With hidden files

source ~/.config/shell/.aliases
source ~/.config/shell/.env
source $XDG_CONFIG_HOME/zsh/plugins/completion.zsh

if [ -e /Users/oleksii_luchnikov/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/oleksii_luchnikov/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
