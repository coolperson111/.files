export EDITOR="nvim"
# export TERMINAL="kitty"
export BROWSER="brave-browser"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
	PATH="$HOME/.local/bin:$PATH"
fi

[ -f ~/.zshrc ] && source ~/.zshrc

export PATH="$PATH:/home/malhar/.local/bin"

export PATH=$PATH:/usr/local/go/bin
