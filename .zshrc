# Enables Powerlevel 10k, must be at top of file
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# # add pyenv to path
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# # load pyenv-virtualenv automatically
# eval "$(pyenv virtualenv-init -)"

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

export EDITOR='vim'
export VISUAL='vim'

# C Tools lecture support
source ~/.c-tools

export PATH="$PATH:/home/daniel/Documents/arm-toolchain/bin"
export PATH="$PATH:/home/daniel/.local/bin"
export PATH="$PATH:/home/daniel/imperial_prog/pintos/src/utils"
export PATH="$PATH:/usr/local/sicstus4.8.0/bin"

# ghcup-env
[ -f "/home/daniel/.ghcup/env" ] && source "/home/daniel/.ghcup/env"

# To customize prompt, run `p10k configure` or edit ~/dotfiles/.p10k.zsh.
[[ ! -f ~/dotfiles/.p10k.zsh ]] || source ~/dotfiles/.p10k.zsh
