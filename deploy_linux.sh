#!/bin/sh

scp target/*.deb uploader@ftp.mwc.mw:/home/uploader/mwc-qt-wallet_`date | cut -d ' ' -f2`_`date | cut -d ' ' -f3`_`date | cut -d ' ' -f6`.deb;
