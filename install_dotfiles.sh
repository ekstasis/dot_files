#!/bin/bash

test=''

shopt -s dotglob

install_dot_file () {
	# $1 is source, $2 is target $3 is "test" (optional)
	if [[ $3 == 'test' ]]; then
		echo '** TEST **'
	fi
	# Backup destination if ti exists
	if [[ -e $2 ]]; then
	    mv_command="mv $2 ${2}.bak"
	    mv_confirm="> $2 exists"
       	    mv_confirm2="> created ${2}.bak"
	    if [[ $3 == 'test' ]]; then
		echo TESTING
		echo $mv_command && echo $mv_confirm && echo $mv_confirm2
	    else
		$mv_command && echo $mv_confirm && echo $mv_confirm2
	    fi
	fi

	ln_command="ln -s $1 $2"
	ln_confirm="> executed: \"ln -s $1 $2\""

	if [[ $3 == 'test' ]]; then
	    echo $ln_command && echo $ln_confirm
	else
	    $ln_command && echo $ln_confirm
	fi
}

# iTerm
#
src_dir=$HOME/dot_files
src_name="com.googlecode.iterm2.plist"
src="${src_dir}/${src_name}"
tar_dir=$HOME/Library/Preferences
target=${tar_dir}/${src_name}

install_dot_file $src $target $test

# home
#
home_src_dir=$HOME/dot_files/home
home_target_dir=$HOME

pushd $home_src_dir > /dev/null
home_files=(*)
popd > /dev/null

for file in ${home_files[*]}; do
	src=${home_src_dir}/${file}
	target=${HOME}/$file
	install_dot_file $src $target $test
done


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
