
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
export HISTFILE=$XDG_CONFIG_HOME/zsh/.zsh_history
# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

setopt HIST_IGNORE_SPACE

source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

autoload -U compinit && compinit -d ~/.config/zsh/zcompdump
ZVM_VI_INSERT_ESCAPE_BINDKEY=kj
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "\e[3~" delete-char
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list "" 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' # match all case
_comp_options+=(globdots) # complete hidden files
bindkey '^[[Z' reverse-menu-complete

alias v="nvim";
alias vs="sudoedit";
alias hc="herbstclient";
alias f="~/.config/lf/lfrun";
alias lf="~/.config/lf/lfrun";
alias t="todo.sh -c";
alias chmod_server="sudo chmod -R 777 /srv/http && sudo chown -R wwwrun:wwwrun /srv/http && sudo chmod 755 /srv/http/phpmyadmin/config.inc.php";
alias gp="git push";
alias gP="git pull";
alias gc="git commit";
alias ga="git add";
alias ls="exa --git --icons"
alias weather="curl -s \"wttr.in/$(echo "$(curl -s https://ipinfo.io/)" | jq -r '.city' | sed 's/ /+/g')\"";

PROMPT=' %F{blue}%~%f  '

