#!/bin/sh

while IFS= read -r repo; do
    printf $repo
    DIR="$HOME/.local/share/nvim/site/pack/$(printf $repo | awk -F'/' '{print $2}')/opt/$(printf $repo | awk -F'/' '{print $2}')/"
    if [ -d $DIR ]; then
	    cd $DIR
	    git pull --verbose
    else
	    mkdir -p $DIR
	    cd $DIR
	    git clone "https://github.com/$repo.git" . --verbose
    fi
done < $(dirname "$0")/externals.txt
