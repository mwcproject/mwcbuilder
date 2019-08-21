# mwcbuilder

This program builds the MWC-QT-WALLET. Currently only mac/linux is supported. More support coming soon (Windows).

# MacOSX

You will need to have all
the prereqs for mwc-qt-wallet: http://github.com/mwcproject/mwc-qt-wallet and mwc713: http://github.com/mwcproject/mwc713.

In general, that is:

1.) Qt with clang 5.9

2.) git

3.) Rust/Cargo 1.36.0+

4.) MacOSX10.14+

5.) Xcode for mac with the codesign/hdiutil utilities available.

Also, note that codesign will require that the code signing certificate is installed on your system.

## instructions

```# git clone https://github.com/cgilliard/mwcbuilder```

```# cd mwcbuilder```

```# ./build-qt-wallet-macos.sh```

The resultant dmg file will be built into the ./target directory.

# Linux

There is a script called setup_ubuntu.sh which will make sure all pre-reqs are installed. The only other step you need to do is install Qt 5.9. To do this, run the qt-unified-linux-x64-3.1.1-online.run program which is in the github repo. This can be ran in parallel with setup_ubuntu.sh. Make sure to select "Archived Versions" and "5.9.0". Use the default instalation location "~/Qt".

## instructions

```# git clone https://github.com/cgilliard/mwcbuilder```

```# cd mwcbuilder```

```# ./build-qt-wallet-linux.sh```

The resultant .deb file will be built into the ./target directory.


