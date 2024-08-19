# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
setopt autocd		# Automatically cd into typed directory.
setopt interactive_comments

# History in cache directory:
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$HOME/.config/shell/history"

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/.aliasrc" ] && source "$HOME/.config/.aliasrc"

# Basic auto/tab complete:
fpath+=~/.zfunc
autoload -U compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit
zmodload -i zsh/complist
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
	case $KEYMAP in
		vicmd) echo -ne '\e[1 q';;      # block
		viins|main) echo -ne '\e[5 q';; # beam
	esac
}

zle -N zle-keymap-select
zle-line-init() {
	zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
	echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete

export PATH="$PATH:/home/malhar/.local/bin"

eval "$(starship init zsh)"

# for flutter and firebase
export PATH="$PATH:/usr/bin/flutter/bin"
export CHROME_EXECUTABLE=/usr/bin/chromium
export PATH="$PATH":"$HOME/.pub-cache/bin"

# for Go
export PATH=$PATH:/usr/local/go/bin

# For android SDK
export PATH="$HOME/android_sdk/latest/cmdline-tools/bin:$PATH"

# Java home for maven
# export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64 
export JAVA_HOME=/home/malhar/.jdks/openjdk-22.0.1/
export PATH=$PATH:$JAVA_HOME/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set up fzf key bindings and fuzzy completion
# source <(fzf --zsh)

if [ -e /home/malhar/.nix-profile/etc/profile.d/nix.sh ]; then . /home/malhar/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer


# For Yazi
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	\rm -f -- "$tmp"
}
