#!/bin/bash

source ${HOME}/.config/itree/preferences

CWD=$(dirname $(readlink -e $0))
if [ -f $CWD/itree.go ]; then
    DIR=$(go run $CWD/itree.go)
else
    DIR=$(itree2)
fi
echo "Changing directory to $DIR"
cd $DIR

if [ "$PrintDirOnExit" = "1" ]; then
	ls
fi
