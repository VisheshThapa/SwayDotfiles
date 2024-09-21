# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

unset rc

alias nvchad='NVIM_APPNAME=nvchad nvim'
alias lzvim='NVIM_APPNAME=lzvim nvim'
. "$HOME/.cargo/env"
export PATH=$PATH:/usr/local/go/bin
alias stripe='~/.stripeCLI/stripe'
export FLYCTL_INSTALL="/home/vish/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
export PATH="$PATH:/home/vish/.local/bin"
export QT6_PLUGIN_PATH="/usr/lib64/qt6/plugins/"
export QT_SELECT=5
