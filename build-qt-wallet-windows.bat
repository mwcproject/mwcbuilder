
del /s /q target
rmdir /s /q target
del /s /q mwc713
rmdir /s /q mwc713
del /s /q mwc-qt-wallet
rmdir /s /q mwc-qt-wallet
del /s /q lib
rmdir /s /q lib

bzip2 -dc libs.tar.bz2 | tar xvf -
set LIBCLANG_PATH=%cd%\lib

mkdir target

git clone https://github.com/mwcproject/mwc713
cd mwc713
cargo build --release
cd ..


git clone https://github.com/mwcproject/mwc-qt-wallet
cd mwc-qt-wallet
..\Qt\5.13.0\mingw73_64\bin\qmake -spec win32-g++ mwc-qt-wallet.pro QMAKE_LFLAGS+=-static
make
cd ..

mkdir target\nsis
xcopy nsis target\nsis /e /s /t
xcopy nsis target\nsis
xcopy nsis\resources target\nsis\resources
xcopy nsis\include target\nsis\include
xcopy nsis\include\lang target\nsis\include\lang

xcopy mwc713\target\release\mwc713.exe target\nsis\payload\x64
xcopy mwc-qt-wallet\release\mwc-qt-wallet.exe target\nsis\payload\x64

cd target/nsis
makensis x64.nsi

