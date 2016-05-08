#!/bin/sh

# install fonts into ~/.local/fonts/ and update font cache for user account.
./fonts/install.sh

# copy over vim configuration stuff to user's home directory.
cp ./vim_files/.vim ~/ -Rfv
cp ./vim_files/.vimrc ~/ -v

echo "Install complete.."
