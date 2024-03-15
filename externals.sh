#!/bin/sh

while IFS= read -r repo; do
    HASH="$(printf $repo | sha512sum | awk '{print $1}')"
    printf "$repo: $HASH\n"
	DIR="$HOME/.local/share/nvim/site/pack/main/opt/$HASH/"
    if [ -d $DIR ]; then
	    cd $DIR
	    git pull --verbose
    else
        mkdir -p "$HOME/.local/share/nvim/site/pack/main/opt/"
	    git clone "https://github.com/$repo.git" "$DIR" --verbose
    fi
    if ! grep -Fxq "vim.cmd [[packadd $HASH]]" "$HOME/.config/nvim/lua/main/externals.lua"; then
        printf "vim.cmd [[packadd $HASH]]\n" >> "$HOME/.config/nvim/lua/main/externals.lua"
    fi
done < "$HOME/.config/nvim/externals.txt"
