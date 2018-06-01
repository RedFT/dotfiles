#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export TERMINAL="gnome-terminal"
export PATH=$PATH:$HOME/.local/bin

exec startx
