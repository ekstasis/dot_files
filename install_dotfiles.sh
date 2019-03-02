#!/bin/bash

src_name="com.googlecode.iterm2.plist"
src_dir="~/dot_files"
cd $src_dir
src="${src_dir}/${src_name}"

tar_dir="~/Library/Preferences/"
target=${tar_dir}${src_name}

if [[ -e $target ]]; then
    mv $target ${target}.bak
    echo $target exists -- created ${target}.bak
fi

ln -s $src $target && echo --> \"ln -s $src $target\"


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
