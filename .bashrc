#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias config='/usr/bin/git --git-dir=/home/mjmanley/.cfg/ --work-tree=/home/mjmanley'
alias restart_cinnamon='cinnamon-dbus-command RestartCinnamon 1'

function backup_dconf() {
	dconf dump /org/cinnamon/ > $HOME/.dconf.org.cinnamon
	dconf dump /org/gnome/terminal/ > $HOME/.dconf.org.gnome.terminal
	dconf dump /org/nemo/desktop/ > $HOME/.dconf.org.nemo.desktop
}

function restore_dconf() {
	dconf load /org/cinnamon/ < $HOME/.dconf.org.cinnamon
	dconf load /org/gnome/terminal/ < $HOME/.dconf.org.gnome.terminal
	dconf load /org/nemo/desktop/ < $HOME/.dconf.org.nemo.desktop
}

PS1='[\u@\h \W]\$ '
eval "$(oh-my-posh -c /usr/share/oh-my-posh/themes/blue-owl.omp.json init bash)"
neofetch
export PATH="$PATH:/opt/010editor" #ADDED BY 010 EDITOR
