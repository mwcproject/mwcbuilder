#!/bin/sh


curl https://sh.rustup.rs -sSf | bash -s -- -y

sudo ln -s ~/.cargo/bin/cargo /usr/bin/cargo

brew install qt5
brew link qt5 --force

