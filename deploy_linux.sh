#!/bin/sh


echo "md5sum = `md5 target/*.deb`";
./sendfile.expect target/*.deb mwc-qt-wallet_`date | cut -d ' ' -f2`_`date | cut -d ' ' -f3`_`date | cut -d ' ' -f6`.deb;
