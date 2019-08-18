#!/bin/sh


echo "md5sum = `md5sum target/*.deb`";
echo "ftp.mwc.mw ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFCzEhIbZcESW50l2Mh9dFIeObKrDBNwZm+FPZzL3tp7U8xkcH0U7rx87cMDUKUfJnO8soJ3yqxf1RXOrFkXKQM=" >> ~/.ssh/known_hosts
./sendfile.expect target/*.deb mwc-qt-wallet_`date | cut -d ' ' -f2`_`date | cut -d ' ' -f3`_`date | cut -d ' ' -f6`.deb;
