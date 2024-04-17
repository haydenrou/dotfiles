alias vi='nvim'
alias vim='nvim'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ga='git add'
alias gaa='git add .'
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit'
alias gca='git add . && git commit'
alias gco='git checkout'
alias gcob='git branch | fzf | xargs git checkout'
alias gpushb='git branch | fzf | sed "s/^* //" | xargs git push -u origin '
alias gbd='git branch | fzf | sed "s/^* //" | xargs git branch -D '
alias gpullb='git branch | fzf | sed "s/^* //" | xargs git pull '
alias gmergeb='git branch | fzf | sed "s/^* //" | xargs git merge '
alias gd='git diff | bat'
alias gds='git diff --staged | bat'
alias gf='git fetch'
alias gfa='git fetch --all'
alias gp='git push'
alias gst='git status -u'
alias rc='bin/rails console'
alias rdm='rake db:migrate'
alias rdmd='rake db:migrate:data'
alias cdd='cd ~/projects/dotfiles'
alias it='git'
alias complete_todo='todoist_helper show todos -a "id,content" | fzf | xargs -I{} todoist_helper complete todo {}'
alias egst="gst | grep modified | awk '{ gsub(/^[^ ]*modified: /,\"\"); print }' | fzf | xargs nvim"
alias :q='exit'
alias cd='z'
alias grep='rg'
alias ls='eza -la --icons --group-directories-first'
alias l='eza -la --icons --group-directories-first'
alias cat="bat"
alias htop="btop"
