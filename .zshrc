# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS  # If you run a command twice, keep only the latest
setopt HIST_REDUCE_BLANKS    # Remove wasted space
setopt SHARE_HISTORY         # Share history between all open tabs
setopt INC_APPEND_HISTORY    # Save commands immediately

# Usability & Keys
autoload -Uz compinit && compinit    # Enable Tab-completion
bindkey -e                           # Use Emacs keys (Ctrl-A, Ctrl-E)
setopt EXTENDED_GLOB                 # Advanced file matching

# Default editor
export EDITOR='vim'
export VISUAL='vim'

# Aliases
source ~/.aliases

# Plugins
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Prompt
eval "$(starship init zsh)"
