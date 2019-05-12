#!/bin/bash
read -p "Press enter to install or ^C to cancel" FOO
echo "urxvt solarized"
mkdir -p ~/.urxvt/ext/
wget -O ~/.urxvt/ext/solarized \\n    https://raw.githubusercontent.com/BobuSumisu/urxvt-solarized/master/solarized
echo "oh-my-zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "pathogen + vim stuff"
mkdir -p ~/.vim/bundle
pushd .
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
popd

