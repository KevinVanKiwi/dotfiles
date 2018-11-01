# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kevin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
export PS1="%n@%M %d %% "
# Add Powerline
powerline-daemon -q
. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
alias ls='ls --color=auto'
alias lsd='ls -d */'
alias ll='ls -lah'
alias config='/usr/bin/git --git-dir=/home/kevin/.cfg/ --work-tree=/home/kevin'
