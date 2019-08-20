reg Query "HKLM\Hardware\Description\System\CentralProcessor\0"

echo Check operating system ...
if defined PROGRAMFILES(X86) (
    echo 64-bit sytem detected
) else (
    echo 32-bit sytem detected
)

git clone https://github.com/mwcproject/mwcbuilder-win32-helpers
cat mwcbuilder-win32-helpers/qt5/* > Qt5.tar.bz2
bzip2 -dc Qt5.tar.bz2 | tar xvf -

cat mwcbuilder-win32-helpers/qt5-part2/* > Qt5p2.tar.bz2
bzip2 -dc Qt5p2.tar.bz2 | tar xvf -


rm -rf Qt5.tar.bz2 Qt5p2.tar.bz2
