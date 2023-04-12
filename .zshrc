# Enables Powerlevel 10k, must be at top of file
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
if [[ -f ~/.p10k.zsh ]]; then
  source ~/.p10k.zsh;
fi

# Common aliases between bash and zsh
source ~/.aliases

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /etc/zsh_command_not_found

HISTFILE=~/.zsh_history
HISTSIZE=5000            # num lines in memory
SAVEHIST=5000            # num lines on disk
HISTDUP=erase            # erase duplicate
setopt appendhistory     # append history (instead of overwriting)
setopt sharehistory      # history shared across terminals
setopt incappendhistory  # immediately save, not just after term exit

export EDITOR='nvim'
export VISUAL='nvim'
