reg Query "HKLM\Hardware\Description\System\CentralProcessor\0"

echo Check operating system ...
if defined PROGRAMFILES(X86) (
    echo 64-bit sytem detected
) else (
    echo 32-bit sytem detected
)

rustup install stable-i686-pc-windows-msvc
git clone https://github.com/mwcproject/mwcbuilder-win32-helpers
cat mwcbuilder-win32-helpers/qt5/* > Qt5.tar.bz2
bzip2 -dc Qt5.tar.bz2 | tar xvf -

set PATH=%cd%\Qt\Tools\mingw730_32\bin;%PATH%
g++ --version
g++

rm -rf Qt5.tar.bz2
