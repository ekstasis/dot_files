#!/bin/bash

install () {
# $1 is source, $2 is target
	if [[ -e $2 ]]; then
	    mv $2 ${2}.bak && echo "> $2 exists" && echo "> created ${2}.bak"
	fi
	
	ln -s $1 $2 && echo "> executed: \"ln -s $1 $2\""
}

src_dir=~/dot_files
src_name="com.googlecode.iterm2.plist"
src="${src_dir}/${src_name}"
tar_dir=~/Library/Preferences
target=${tar_dir}/${src_name}

install $src $target


### Brew ###
# git


### XCode ###

### ZSH ###

# install
# chsh
# prezto
# clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#       ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#   done
 
### iTERM ###
# com.plist

### Pycharm ###
# repo?

# Anaconda
# envs
