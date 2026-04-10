#!/usr/bin/bash
target="$HOME/.config"

for dir in */; do
    [ -d "$dir" ] || continue
    name="$(basename "$dir")"

    rm -r "$target/$name"
    ln -s "$(pwd)/$name" "$target/$name"
    echo $name
done

rm -r "$HOME/.zshenv"
ln -s "$(pwd)/.zshenv" "$HOME/.zshenv"
