#!/bin/sh

# Pull all submodules for this repo..
git submodule update --recursive --init

# install fonts into ~/.local/fonts/ and update font cache for user account.
if [ "$1" != "no_fonts" ]; then
    echo "***** Installing fonts.. *****"
    ./fonts/install.sh
else
    echo "Skipping install of powerline fonts.."
fi

# copy over vim configuration stuff to user's home directory.
cp ./vim_files/.vim ~/ -Rfv
cp ./vim_files/.vimrc ~/ -v

echo "Install complete.."
