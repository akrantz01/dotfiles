# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2500
SAVEHIST=10000
setopt extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alex/.zshrc'

fpath+=~/.zfunc
fpath+=~/.zsh/zsh-completions/src
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Configure shell
source /etc/profile
eval "$(dircolors -b)"
eval "$(starship init zsh)"

# Autocompletion
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable colors for tools
alias ls="ls --color=auto -la"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Dotfiles management
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Replace ls with exa
alias ls='exa --long --all --git --binary'

# Rust
source $HOME/.cargo/env

# NodeJS
# Loads from profile.d to allow non-login shells access
source "/etc/profile.d/nvm.sh"

# Go + Yarn + Pipx + rbenv + Poetry
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin:$HOME/.yarn/bin:$HOME/.local/bin:$HOME/.rbenv/bin:$HOME/.rbenv/plugins/ruby-build/bin:$HOME/.poetry/bin

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# Enable rbenv
eval "$(rbenv init -)"

# Add wasmtime
export WASMTIME_HOME="$HOME/.wasmtime"
export PATH="$WASMTIME_HOME/bin:$PATH"

# Use bat instead of cat
alias cat="bat"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/alex/google-cloud-sdk/path.zsh.inc' ]; then . '/home/alex/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/alex/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/alex/google-cloud-sdk/completion.zsh.inc'; fi

# Add thefuck alias
eval $(thefuck --alias)

# Add homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# NeoVim aliases
alias nv="nvim"
alias e="nvim"
