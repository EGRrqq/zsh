# Set path if required
source ~/.zplug/init.zsh

[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="$NVM_DIR/current/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Keep 5000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/fzf"
plug "zap-zsh/vim"
plug "zap-zsh/exa"

export PATH="$HOME/.local/bin":$PATH

# Load and initialise completion system
autoload -Uz compinit
compinit
