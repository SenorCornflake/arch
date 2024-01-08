export XDG_CONFIG_HOME=$HOME/.config
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

export EDITOR=nvim
export TERMINAL=kitty
export browser=firefox
export video=mpv
export VISUAL=nvim
export MANPAGER="nvim +Man!"
export MANWIDTH=999
export SSH_ASKPASS=""
export BAT_THEME=base16



# Highlight man pages in less (keep this there even though i use neovim for man pages)
export LESS_TERMCAP_mb="$(tput bold; tput setaf 2)";
# Start bold
export LESS_TERMCAP_md="$(tput bold; tput setaf 2)"; # green
# Start stand out
export LESS_TERMCAP_so="$(tput bold; tput setaf 3)"; # yellow
# End standout
export LESS_TERMCAP_se="$(tput rmso; tput sgr0)";
# Start underline
export LESS_TERMCAP_us="$(tput smul; tput bold; tput setaf 1)"; # red
# End Underline
export LESS_TERMCAP_ue="$(tput sgr0)";
# End bold, blinking, standout, underline
export LESS_TERMCAP_me="$(tput sgr0)";


