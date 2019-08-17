
del /s /q target
rmdir /s /q target
del /s /q mwc713
rmdir /s /q mwc713
del /s /q mwc-qt-wallet
rmdir /s /q mwc-qt-wallet

mkdir target

git clone https://github.com/mwcproject/mwc713
cd mwc713
cargo build --release
cd ..


git clone https://github.com/mwcproject/mwc-qt-wallet
cd mwc-qt-wallet
qmake -spec win32-g++ mwc-qt-wallet.pro
make
cd ..

mkdir target\nsis
xcopy nsis target\nsis /e /s /t
xcopy nsis target\nsis
xcopy nsis\resources target\nsis\resources
xcopy nsis\include target\nsis\include

xcopy mwc713\target\release\mwc713.exe target\nsis\payload
xcopy mwc-qt-wallet\release\mwc-qt-wallet.exe target\nsis\payload

cd target/nsis
makensis x64.nsi

