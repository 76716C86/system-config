# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2048
SAVEHIST=2048
setopt appendhistory autocd extendedglob notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/root/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit

# oh my zsh shit BEGIN
ZSH="${HOME}/.cache/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
ZSH_THEME="wezm"
# oh my zsh shit END

source <(antibody init)
antibody bundle < ~/.zsh_plugins

# export PS1="%M %~ %% "

# export EDITOR=/usr/bin/nvim
# export VISUAL=/usr/bin/nvim

alias make='make -j`nproc`'
alias scan-build='scan-build -analyze-headers -V -stats'

export CMAKE_BUILD_PARALLEL_LEVEL=`nproc`
