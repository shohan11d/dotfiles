# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

# -----------------------------------------------------
# Exports
# -----------------------------------------------------
export EDITOR=nvim
export PATH="/usr/lib/ccache/bin/:$PATH"
export PATH=$PATH:~/.cargo/bin/
export PATH=$PATH:~/.local/bin/
export PATH="$HOME/.cargo/bin:$PATH"

export X1D="/run/media/shohan11d/X1"

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

# -----------------------------------------------------
# General
# -----------------------------------------------------
alias ..='cd ..'
alias c='clear'
alias ll='eza -al --icons=always'
alias lt='eza -a --tree --level=1 --icons=always'
alias shutdown='systemctl poweroff'
alias v='$EDITOR'
alias wifi='nmtui'
alias arch-cleanup='~/.config/ml4w/scripts/arch/cleanup.sh'
alias updates='~/.config/ml4w/scripts/ml4w-install-system-updates'
alias lock='hyprlock'
alias clock='tty-clock'
alias npx-next='npx create-next-app@latest'
alias npx-next='npx create-next-app@latest'

# -----------------------------------------------------
# Git
# -----------------------------------------------------
alias gs="git status"
alias ga="git add"
alias gap='ga --patch'
alias gl='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(auto)  %D%n%s%n"'
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"

alias gb="git branch"
alias gi="git init"
alias gcl="git clone"


alias gst="git stash"
alias gsp="git stash; git pull"
alias gfo="git fetch origin"
alias gcheck="git checkout"
alias gcredential="git config credential.helper store"

alias dnfi='sudo dnf install'
alias dnfr='sudo dnf remove'
alias dnfu='sudo dnf update'
alias ll='ls -lah'
alias la='ls -A'
alias cd="z"
alias nv='nvim'
alias c='clear'
alias surf='exec windsurf'
alias code='exec code'

alias cp='cp -i' # ask before overwrite
alias mv='mv -i' # ask before overwrite
alias rm='rm -i' # ask before deleting (safe)

# Alias
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git
alias g='git'
alias gcd='git clone --depth=1'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'

#init starship
eval "$(starship init bash)"
#init zioxide
eval "$(zoxide init bash)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
unset command_not_found_handle
export PATH="$HOME/.npm-global/bin:$PATH"

# opencode
export PATH=/home/shohan11d/.opencode/bin:$PATH


if [[ "$TERM_PROGRAM" != "vscode" ]]; then
  fastfetch
fi  