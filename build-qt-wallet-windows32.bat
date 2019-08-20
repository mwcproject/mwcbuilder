del /s /q target
rmdir /s /q target
del /s /q mwc713
rmdir /s /q mwc713
del /s /q mwc-qt-wallet
rmdir /s /q mwc-qt-wallet
del /s /q lib
rmdir /s /q lib

bzip2 -dc libs32.tar.bz2 | tar xvf -
set LIBCLANG_PATH=%cd%\lib
set OPENSSL_LIB_DIR=%cd%\lib\openssl@1.1/lib/
set OPENSSL_INCLUDE_DIR=%cd%\lib\openssl@1.1/include/
set OPENSSL_STATIC="yes"

mkdir target

git clone https://github.com/mwcproject/mwc713
;cd mwc713
;cargo +stable-i686-pc-windows-msvc build --release
cd ..


git clone https://github.com/mwcproject/mwc-qt-wallet
cp fix_win32_makefile.bat mwc-qt-wallet
cd mwc-qt-wallet
..\Qt\5.13.0\mingw73_32\bin\qmake -spec win32-g++ mwc-qt-wallet.pro QMAKE_LFLAGS+=-static
fix_win32_makefile.bat
pwd
make
cd ..

mkdir target\nsis
xcopy nsis target\nsis /e /s /t
xcopy nsis target\nsis
xcopy nsis\resources target\nsis\resources
xcopy nsis\include target\nsis\include
xcopy nsis\include\lang target\nsis\include\lang

xcopy mwc713\target\release\mwc713.exe target\nsis\payload\x86
xcopy mwc-qt-wallet\release\mwc-qt-wallet.exe target\nsis\payload\x86

cd target/nsis
makensis x86.nsi

