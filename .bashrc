# if not running interactively, don't do anything
[ -z "$PS1" ] && return
################################################################################
# shell stuff
################################################################################
PS1='\h\$ '
# shell options
shopt -s histverify
# vi bindings
set -o vi
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

################################################################################
# dotkit
################################################################################
# if we have a local installation of dotkit, then use it
if [[ -d $HOME/local/dotkit ]]; then
    eval `$HOME/local/dotkit/init`
    use -q dotkit
fi

################################################################################
# cvs
################################################################################
export CVS_RSH=ssh

################################################################################
# svn
################################################################################
# set default editor to vim
export SVN_EDITOR=vim

################################################################################
# lanl stuff
################################################################################
lanl-proxify() {
    export http_proxy=http://proxyout.lanl.gov:8080
    export https_proxy=https://proxyout.lanl.gov:8080
    export ftp_proxy=http://proxyout.lanl.gov:8080
    export no_proxy=lanl.gov
    export NO_PROXY=lanl.gov
    export HTTP_PROXY=http://proxyout.lanl.gov:8080
    export HTTPS_PROXY=https://proxyout.lanl.gov:8080
    export FTP_PROXY=http://proxyout.lanl.gov:8080
}

lanl-unproxify() {
    unset http_proxy
    unset https_proxy
    unset ftp_proxy
    unset no_proxy
    unset NO_PROXY
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset FTP_PROXY
}

################################################################################
# aliases
################################################################################
# repo checkout
alias cosm='git clone git@github.com:hpc/supermagic.git'
alias commu='git clone git@github.com:hpc/mpimemu.git'
alias compith='cvs -z3 -d:ext:samuel@sf4.lanl.gov:/cvsroot/mpith checkout mpith'
alias coplfs='svn co https://plfs.svn.sourceforge.net/svnroot/plfs/trunk '
alias coloba='cvs -d:ext:samuel@sf4.lanl.gov:/cvsroot/loba co loba'
alias coompi='svn co https://svn.open-mpi.org/svn/ompi/trunk '

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# ctags stuff for nice vim integration
alias myctags=\
"ctags -R --languages=C,C++ --c++-kinds=+p --fields=+iaS --extra=+q"

################################################################################
# cluster ssh
################################################################################

########################################
# lanl 
########################################
alias wtrw='ssh -Y samuel@wtrw.lanl.gov'
alias tu-fe1='ssh -Y samuel@tu-fe1.lanl.gov'
alias rr-dev='ssh -Y samuel@rr-dev-fe.lanl.gov'
alias lo-fe1='ssh -Y samuel@wtrw.lanl.gov -t ssh lo-fe1'
alias pi-fey='ssh -Y samuel@pi-fey.lanl.gov' 
alias ml-fey='ssh -Y samuel@ml-fey.lanl.gov' 
alias mu-fe1='ssh -Y samuel@wtrw.lanl.gov -t ssh mu-fe1'
alias ga-fe1='ssh -Y samuel@wtrw.lanl.gov -t ssh ga-fe1'
alias ce-fe1='ssh -Y samuel@wtrw.lanl.gov -t ssh ce-fe1'
alias cj-fe1='ssh -Y samuel@wtrw.lanl.gov -t ssh cj-fe1'
alias mp-fe1='ssh -Y samuel@wtrw.lanl.gov -t ssh mp-fe1'
alias ce-fe3='ssh -Y samuel@wtrw.lanl.gov -t ssh ce-fe3'
alias ct-fe1='ssh -Y samuel@ct-fe1'
alias sm-fe1='ssh -Y samuel@sm-cm -t ssh sm-fe1'
alias cuda='ssh -Y samuel@cuda.lanl.gov'
alias cub-fe="ssh -Y samuel@ccstargate -t ssh -Y samuel@cub-fe.ccstar"

########################################
# llnl
########################################
alias llnl-atlas='ssh -p 922 samuel@atlas.llnl.gov'
alias llnl-hera='ssh -p 922 samuel@hera.llnl.gov'
alias llnl-zeus='ssh -p 922 samuel@zeus.llnl.gov'
alias llnl-hype='ssh -p 922 samuel@hype.llnl.gov'

########################################
# ornl
########################################
# to get to jaguarpf and chester (xe-6)
alias ornl_home='ssh samuel@home.ccs.ornl.gov'

################################################################################
# PATH
################################################################################
export PATH=\
$PATH
