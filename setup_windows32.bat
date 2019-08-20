rustup install stable-i686-pc-windows-msvc
git clone https://github.com/mwcproject/mwcbuilder-win32-helpers
cat mwcbuilder-win32-helpers/qt5/* > Qt5.tar.bz2
bzip2 -dc Qt5.tar.bz2 | tar xvf -
set PATH=%cd%\Qt\Tools\mingw730_32\bin;%PATH%
which g++
echo %PATH%
rm -rf Qt5.tar.bz2
