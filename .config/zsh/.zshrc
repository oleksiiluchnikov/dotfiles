# Zsh configuration
# -----------------
# This file is sourced by ~/.zshenv

source "$ZDOTDIR/.zshenv"  # source environment variables
source "$ZDOTDIR/.aliases" # source aliases

bindkey -v # Use vim key bindings in zsh

# znap - Zsh plugin manager (https://github.com/marlonrichert/zsh-snap)
# =============================================================================
[[ -r "$HOME/repositories/znap/znap.zsh" ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git "$HOME/repositories/znap"
# shellcheck source=/dev/null
source "$HOME/repositories/znap/znap.zsh"

znap prompt
# znap source marlonrichert/zsh-autocomplete
znap function _pyenv pyenv "znap eval pyenv 'pyenv init - --no-rehash'"
compctl -K _pyenv pyenv
znap install aureliojargas/clitest
# zsh-users/zsh-completions
# znap install zsh-users/zsh-completions
# znap install zsh-users/zsh-autosuggestions
znap install zsh-users/zsh-syntax-highlighting

# Completion
_comp_options+=(globdots)                                 # Include hidden files when completing files
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # Case-insensitive completion
if [[ -r "$ZDOTDIR/plugins/completion.zsh" ]]; then
    # shellcheck source=/dev/null
    source "$ZDOTDIR/plugins/completion.zsh"
else
    fpath=("$ZDOTDIR/plugins" "${fpath[@]}")
    autoload -Uz compinit # Load the auto completion system
    compinit
fi

# # Extra Plugin Configurations

# zsh-syntax-highlighting - Fish shell like syntax highlighting for Zsh (https://github.com/zsh-users/zsh-syntax-highlighting)
# =============================================================================
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#8b8429"  # color of the autosuggestion
export ZSH_AUTOSUGGEST_STRATEGY=(history completion) # strategy for autosuggestions (history, completion, history-and-completion)
# shellcheck source=/dev/null
source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# shellcheck source=/dev/null
source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

# if zsh-autosuggestions is installed, bind autosuggest-accept to ^Y
if [ -n "$(which autosuggest-accept)" ]; then
    bindkey '^Y' autosuggest-accept
fi

# starship - The minimal, blazing-fast, and infinitely customizable prompt for any shell! (https://starship.rs/)
# =============================================================================
if [ -x "$(command -v starship)" ]; then
    if [ -f "$XDG_CONFIG_HOME/starship/starship.toml" ]; then
        export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
    fi
    eval "$(starship init zsh)"
fi

# zoxide - A faster way to navigate your filesystem (https://github.com/ajeetdsouza/zoxide)
# =============================================================================
if [ -d "$XDG_DATA_HOME/zoxide" ]; then
    export _ZO_DATA_DIR="$XDG_DATA_HOME/zoxide"
    eval "$(zoxide init zsh)"
fi

# nix - The Purely Functional Package Manager (https://nixos.org/)
# =============================================================================
if [ -e "$XDG_DATA_HOME/nix-profile/etc/profile.d/nix.sh" ]; then
    "$XDG_DATA_HOME/nix-profile/etc/profile.d/nix.sh"
fi

# fzf - A command-line fuzzy finder (https://github.com/junegunn/fzf)
# =============================================================================
if [ -x "$(command -v fzf)" ]; then
    export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
    export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --preview "bat --color=always --style=header,grid --line-range :500 {}" --preview-window=right:60%:wrap'
    # shellcheck source=/dev/null
    [ -f ~/.fzf.zsh ] && source "$XDG_DATA_HOME/fzf/fzf.zsh"
fi

# neovim - Vim-fork focused on extensibility and usability (https://neovim.io/)
# =============================================================================
# if shell function "n" is defined, use it to open neovim
if [ -n "$(which n)" ]; then
    bindkey -s '^N' 'n\n' # control + n to open neovim in the current directory
fi

# Source API keys
# shellcheck source=/dev/null
source "$XDG_CONFIG_HOME/.api_keys"
