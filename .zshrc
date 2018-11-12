# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

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

alias l='ls -CF'
alias la='ls -A'
alias lsd='ls -d */'
alias ll='ls -alhF'
alias ls='ls --color=auto'

alias config='/usr/bin/git --git-dir=/home/kevin/.cfg/ --work-tree=/home/kevin'
alias pluto='ssh funkeydunkey@pluto.tugraz.at'

eval "$(dircolors)"

# Zsh to use the same colors as ls
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
