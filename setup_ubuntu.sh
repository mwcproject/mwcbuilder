#!/bin/sh

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-6.0 main"

sudo apt update
sudo apt install qt5-default qtcreator clang-6.0 git curl make build-essential libgl1-mesa-dev openssl libssl1.0-dev -y

curl https://sh.rustup.rs -sSf | bash -s -- -y

sudo ln -s /home/ubuntu/.cargo/bin/cargo /usr/bin/cargo

