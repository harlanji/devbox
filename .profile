# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

GOBIN="/usr/lib/go/bin"
if [ -d "$GOBIN" ] ; then
	PATH="$PATH:$GOBIN"	
fi

if [ -d "$HOME/lib/go" ] ; then
	export GOPATH="$HOME/lib/go"
	PATH="$PATH:$GOPATH/bin"
fi

NVM="$HOME/nvm/nvm.sh"
if [ -e "$NVM" ] ; then
	. $NVM
fi

GAE="$HOME/lib/google_appengine"
if [ -e "$GAE" ] ; then
	PATH="$PATH:$GAE"
fi
