#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias config='/usr/bin/git --git-dir=/home/mjmanley/.cfg/ --work-tree=/home/mjmanley'

eval "$(oh-my-posh -c /usr/share/oh-my-posh/themes/blue-owl.omp.json init bash)"
fastfetch
