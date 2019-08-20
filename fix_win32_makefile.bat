sed 's/^LINKER.*/LINKER = D:/a/1/s/Qt/Tools/mingw730_32/bin/g++/' Makefile.Release > Makefile.Release.1
sed 's/^CXX.*/CXX = D:/a/1/s/Qt/Tools/mingw730_32/bin/g++/' Makefile.Release.1 > Makefile.Release

cat Makefile.Release
