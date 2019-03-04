#
# dfit:  Moves argument to dot_files_dir and replaces it with a symbolic link
#

df_dir=$2
curr_dir=$(pwd)
arrow='++++>'

if [[ -e $df_dir/$1 ]]; then
    echo ERROR - \"$1\" already exists in dot file directory:  $df_dir.  Quitting.
    return
fi

echo $arrow Moving \"$1\" to ${df_dir}\/ . . .
mv $1 $df_dir

if [[ -e $curr_dir/$1 ]]; then
    echo ERROR Can\'t create symbolic link.  \"$1\" is '(still?)' in $curr_dir.  Quitting.
    return
fi

echo $arrow Creating symbolic link ...
ln -s $df_dir/$1 $curr_dir

echo $arrow New symlink in $curr_dir:  
ls -al $curr_dir | grep $1

