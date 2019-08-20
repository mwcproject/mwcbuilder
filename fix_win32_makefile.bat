sed -e 's/^LINKER .*/LINKER = D:\/a\/1\/s\/Qt\/Tools\/mingw730_32\/bin\/g++/' Makefile.Release > Makefile.Release.1
sed -e 's/^CXX .*/CXX = D:\/a\/1\/s\/Qt\/Tools\/mingw730_32\/bin\/g++/' Makefile.Release.1 > Makefile.Release
perl -pi -e 's/\r\n/\n/g' Makefile.Release
rm -rf Makefile.Release.1
cat Makefile.Release
