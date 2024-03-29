# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export EDITOR=nvim
export VISUAL=nvim

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000000
export SAVEHIST=10000000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '
# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

function randomize_background () {
  randombg=$(ls $HOME/.bgs | grep -E '(jpg|png)$' | sort -R | tail -1)

  feh --bg-scale $HOME/.bgs/$randombg
}

alias chbg=randomize_background

if [[ -f $HOME/projects/dotfiles/zsh/.personal.zshrc ]] ; then
  source $HOME/projects/dotfiles/zsh/.personal.zshrc
fi

source $HOME/projects/dotfiles/zsh/aliases.zsh

source $HOME/.asdf/asdf.sh

# Stop <c-d> exiting
set -o ignoreeof

set -o vi

autoload -Uz compinit
compinit

# Enable zoxide
eval "$(zoxide init zsh)"

export GOPATH=$(asdf where golang)/packages
export GOROOT=$(asdf where golang)/go

export PATH=$PATH:$(go env GOPATH)/bin

# Allow history to be recorded in tmux sessions
# https://askubuntu.com/questions/339546/how-do-i-see-the-history-of-the-commands-i-have-run-in-tmux
# avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# https://github.com/tmux-plugins/tpm/issues/58
export TMUX_PLUGIN_MANAGER_PATH="$HOME/.tmux/plugins"

# FZF configurations
export FZF_DEFAULT_OPTS='--layout=reverse --height 40%'
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="rg --hidden --sort-files --files --null 2> /dev/null | xargs -0 dirname | uniq"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export EYAML_CONFIG="./eyaml_config.yaml"

. "$HOME/.env"

# Run on every new terminal
neofetch
