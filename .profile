# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# add aliases if ~/.aliases exists
if [ -d "$HOME/.aliases" ] ; then
    source ~/.aliases
fi

disfetch
