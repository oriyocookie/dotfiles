#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi
# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

LS_COLORS=$LS_COLORS:'di=0;93:ex=1;31' ; export LS_COLORS
#export  PS1='\[\033[00;32m\]\u@\h\[\033[34m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#export PS1='\e[42m\u@\h:$ \e[m'
#export PS1='\e[1;37;42;234m\u\e[38;240m@\e[1;38;28;44;234m\h \e[38;54m\d \@\e[0m\n\e[0;31;48;234m[\w] \e[1m\$\e[0m '

#export PS1='\e[1;37;42;234m\u\e[38;240m@\e[1;38;28;104;234m\h \e[38;54m\d \@\e[0m\n: \e[1m\$\e[0m '

function _update_ps1() {
    PS1=$(powerline-shell $?)
}


if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

neofetch

alias gdbtui="gdb --nh -tui"
alias valgrindleakcheck="valgrind --leak-check=yes"
alias ll="ls -la"
alias la="ls -a"
alias t="tmux"
alias tk="tmux kill-server"
alias q="exit"
