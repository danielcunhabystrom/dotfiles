# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/xcunda/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH=$PATH:/snap/bin

# Load ssh-keys
eval $(ssh-agent -s)
ssh-add

eval "$(starship init zsh)"
