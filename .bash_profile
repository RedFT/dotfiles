#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export TERMINAL="termite"
export PATH=$PATH:$HOME/.local/bin

exec startx
