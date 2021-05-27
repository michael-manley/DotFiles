# Load Antigen
source "$HOME/.antigen.zsh"

# Load Antigen configurations
antigen init ~/.antigenrc

# Load Powerline10k Configuration
source "$HOME/.p10k.zsh"

# Set VI to load emacs in terminal mode
alias vi="emacs -nw"

# Setup terminal to get ssh from yubikey
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
