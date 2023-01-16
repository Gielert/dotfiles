####################
#      .zshrc      #
####################
#
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda-gitster"

plugins=(git ssh-agent)

source $ZSH/oh-my-zsh.sh

source ~/.aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export TERM=xterm-256color
export EDITOR="vim"

setxkbmap -option caps:escape

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
