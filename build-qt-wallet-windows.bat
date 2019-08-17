
# clean dirs
del /s /q mwc713 mwc-qt-wallet target
mkdir target

# Build mwc713
git clone https://github.com/mwcproject/mwc713
cd mwc713
cargo build --release
cd ..


# Build mwc-qt-wallet
git clone https://github.com/mwcproject/mwc-qt-wallet
cd mwc-qt-wallet
qmake -spec mingw73_64 mwc-qt-wallet.pro
make
cd ..

# Copy files over to build installers
cp -rp nsis target

cp mwc713/target/release/mwc713.exe target/nsis/payload
cp mwc-qt-wallet/release/mwc-qt-wallet.exe target/nsis/payload

cd target/nsis
makensis x64.nsi

