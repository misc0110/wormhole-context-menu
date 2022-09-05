#!/bin/bash
name=magic-wormhole-dolphin
VERSION=0.1
if test `whoami` != "root"; then echo "You need to run this target using fakeroot: fakeroot -u ./makedeb.sh"; exit 1; fi
mkdir -pv deb/usr/share/kservices5/ServiceMenus
mkdir -pv deb/usr/share/doc/$name
cp wormhole.desktop deb/usr/share/kservices5/ServiceMenus
mkdir -p deb/DEBIAN
sed "s/%VERSION%/$VERSION/" debian-control > deb/DEBIAN/control
echo "initial version" > deb/usr/share/doc/$name/changelog
echo "Copyright 2022, Michael Schwarz" > deb/usr/share/doc/$name/copyright
gzip -c -9 -n deb/usr/share/doc/$name/changelog > deb/usr/share/doc/$name/changelog.gz
#gzip -c -9 -n $name.1 > deb/usr/share/man/man1/$name.1.gz
rm deb/usr/share/doc/$name/changelog
chmod -R 0755 deb/usr
chmod 0644 deb/usr/share/doc/$name/*
#chmod 0644 deb/usr/share/man/man1/*
chown -R root:root deb/
dpkg-deb --build deb
rm -rf deb
lintian deb.deb 
mkdir -p dist
mv deb.deb dist/${name}_${VERSION}_amd64.deb
