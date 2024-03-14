#!/bin/sh

while IFS= read -r repo; do
    printf "$repo\n"
    HASH="$(printf $repo | sha512sum | awk '{print $1}')"
    DIR="$HOME/.local/share/nvim/site/pack/main/opt/$HASH/"
    if [ -d $DIR ]; then
	    cd $DIR
	    git pull --verbose
    else
	    mkdir -p $DIR
	    cd $DIR
	    git clone "https://github.com/$repo.git" . --verbose
    fi
    if ! grep -q -F "vim.cmd [[packadd $HASH]]" "$(dirname "$0")/lua/main/externals.lua"; then
        printf "vim.cmd [[packadd $HASH]]\n" >> "$(dirname "$0")/lua/main/externals.lua"
    fi
done < $(dirname "$0")/externals.txt
