#!/bin/sh

while IFS= read -r repo; do
    printf $repo | awk -F"/" "{print $2}"
    DIR="$HOME/.local/share/nvim/site/pack/$(printf $repo | awk -F'/' '{print $2}')/opt/$(printf $repo | awk -F'/' '{print $2}')/"
    if [ -d $DIR ]; then
	    cd $DIR
	    git pull
    else
	    mkdir -p $DIR
	    cd $DIR
	    git clone "https://github.com/$repo.git" .
    fi
done < $(dirname "$0")/externals.txt
