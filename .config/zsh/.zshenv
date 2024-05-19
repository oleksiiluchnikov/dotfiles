# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8'   # Set language to US English
export LC_ALL='en_US.UTF-8' # Set locale to US English

export HISTFILE=$XDG_DATA_HOME/zsh/zsh_history
export LESSHISTFILE="$XDG_DATA_HOME/less/lesshst"
export SHELL_SESSIONS_DISABLE=1 # Disable shell sessions for security reasons
export ZSH_THEME="hyperzsh"
export SOLARIZED_THEME="dark"
export HISTSIZE=10000 # Maximum events for internal history
export SAVEHIST=10000 # Maximum events in history file

export BROWSER="arc"      # Default browser
export EDITOR="nvim"      # Default editor
export TERMINAL="wezterm" # Default terminal

export PUNCTUAL_SHOW_HOSTNAME=false       # Show hostname in prompt (true/false)
export PUNCTUAL_CURRENT_DIR_COLOUR=yellow # Current directory colour

# Homebrew
# ============================================================================
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_PREFIX=/opt/homebrew
export HOMEBREW_CELLAR=/opt/homebrew/Cellar
export PATH="$HOME/.poetry/bin:$PATH:/usr/local/bin:$HOME/.cargo/bin:opt/homebrew/bin:$PATH"

# bat
# ============================================================================
export BAT_THEME="Catppuccino-mocha"

# tmux
# ============================================================================
export PATH=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH

# SSH
# ============================================================================
export SSH_CONFIG="$XDG_CONFIG_HOME/ssh/config" # ssh config filepath

# pass
# ============================================================================
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass" # pass directory

# git
# ============================================================================
export GIT_CONFIG="$XDG_CONFIG_HOME/git/config" # git config filepath
export GIT_CONFIG_NOSYSTEM=1                    # don't use system git config
export GIT_CONFIG_NOGLOBAL=1                    # don't use global git config
export GIT_CONFIG="$XDG_CONFIG_HOME/git/config" # git config file
export GIT_AUTHOR_NAME="Oleksii Luchnikov"      # git author name (e.g. for git commit)

# Nodejs
# ============================================================================
export NVM_DIR="$XDG_DATA_HOME/nvm"                       # nvm directory for nodejs versions and packages
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc" # npm config file for global packages

# fzf (fuzzy finder)
# ============================================================================
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border' # fzf options for all commands

# aws cli
# ============================================================================
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"                  # AWS config file for aws cli (e.g. region)
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials" # AWS credentials file for aws cli

# Rust
# ============================================================================
export RUSTUP_HOME="$XDG_DATA_HOME/rustup" # Rustup home directory
export CARGO_HOME="$XDG_DATA_HOME/cargo"   # cargo home directory (rust)

# Python
# ============================================================================
export PIP_CONFIG_FILE="$XDG_CONFIG_HOME/pip/pip.conf" # pip config file for global packages
export PYTHONIOENCODING='UTF-8'                        # Python encoding for stdout and stderr (e.g. for pip)

# VSCode
# ============================================================================
export VSCODE_PORTABLE="$XDG_DATA_HOME/vscode" # vscode portable directory
export WGETRC="$XDG_CONFIG_HOME/wgetrc"        # wget config file

# Go
# ============================================================================
export GOPATH="$XDG_DATA_HOME/go"
export GOBIN="$GOPATH/bin"

# Clouds
# ============================================================================
export ICLOUD="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
export GDRIVE="$HOME/Google Drive"
export DROPBOX="$HOME/Dropbox"

# Home directory
export DOTFILES="$HOME/dotfiles"   # dotfiles for configuration files
export SCRIPTS="$HOME/scripts"     # scripts for automations
export DOWNLOADS="$HOME/Downloads" # for downloads

export ASSETS="$ICLOUD/Assets"              # for assets
export ASSETS_TEMPLATES="$ASSETS/Templates" # for templates

export PROJECTS="$ICLOUD/Projects"                    # for projects
export PROJECT_TEMPLATES="$ASSETS_TEMPLATES/Projects" # for project templates

export SKETCHES="$ICLOUD/Sketches"                   # for quick sketches
export SKETCH_TEMPLATES="$ASSETS_TEMPLATES/Sketches" # for sketch templates

# Knowledge Vault
export VAULT="$HOME/knowledge"
export VAULT_JOURNAL="$VAULT/Journal"
export VAULT_DAILY="$VAULT_JOURNAL/Daily"

# remove duplicat entries from $PATH
# shellcheck disable=SC2155
export PATH=$(echo "$PATH" | tr ':' '\n' | awk '!a[$0]++' | tr '\n' ':')
