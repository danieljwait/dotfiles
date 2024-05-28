HISTFILE=~/.zsh_history
HISTSIZE=5000            # num lines in memory
SAVEHIST=5000            # num lines on disk
HISTDUP=erase            # erase duplicate
setopt appendhistory     # append history (instead of overwriting)
setopt sharehistory      # history shared across terminals
setopt incappendhistory  # immediately save, not just after term exit

# lines from zsh-newuser-install
setopt extendedglob
bindkey -e  # emacs keybind (fixes C-a)

# lines from compinstall
zstyle :compinstall filename '/home/daniel/.zshrc'
autoload -Uz compinit
compinit

export EDITOR='vim'
export VISUAL='vim'

source ~/.aliases

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/command-not-found.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
