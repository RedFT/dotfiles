#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export TERMINAL="gnome-terminal"
export PATH=$PATH:/home/norbs/.local/bin

exec startx
