#!/bin/bash

# $1 is source file, $2 is target (link to be created)
# $3 is "test" (optional)

echo $1 is source  --  $2 is target
echo ln -s source target

shopt -s dotglob

if [[ $3 == 'test' ]]; then
	echo '** TEST **'
fi

# Backup target if it exists
if [[ -L $2 ]]; then
    echo $2 exists
fi

if [[ -L $2 ]]; then
    backup_command="mv $2 ${2}.bak"
    backup_confirm="> $2 exists -- created ${2}.bak"
    if [[ $3 == 'test' ]]; then
	    echo Testing: $backup_command && echo $backup_confirm 
    else
	    $backup_command && echo $backup_confirm 
    fi
fi

# Create symbolic link from $2 to $1 (target to source)

ln_command="ln -s $1 $2"
ln_confirm="> executed: \"ln -s $1 $2\""

if [[ $3 == 'test' ]]; then
    echo $ln_command && echo $ln_confirm
else
    $ln_command && echo $ln_confirm
fi
