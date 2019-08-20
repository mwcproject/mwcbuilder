git clone https://github.com/mwcproject/mwcbuilder-win32-helpers
cat mwcbuilder-win32-helpers/qt5/* > Qt5.tar.bz2
bzip2 -dc Qt5.tar.bz2 | tar xvf -
rm -rf Qt5.tar.bz2
