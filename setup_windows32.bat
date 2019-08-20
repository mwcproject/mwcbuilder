df -h

git clone https://github.com/mwcproject/mwcbuilder-win32-helpers

cat qt5-part2/* | bzip2 -dc | tar xvf -
cat qt5/* | bzip2 -dc | tar xvf -
rm -rf mwcbuilder-win32-helpers

