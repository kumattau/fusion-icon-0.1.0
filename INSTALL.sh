#!/bin/sh -x

if [ ! -e fusion-icon_0.1.0.orig.tar.gz ]
then
	apt-get source fusion-icon
	tar zxvf fusion-icon_0.1.0.orig.tar.gz
fi

cd fusion-icon-0.1.0
debuild -uc -uc
cd ../
sudo dpkg -i *.deb
