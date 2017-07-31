#!/bin/bash
set -e

URL=https://splunk.vidyocloud.com/upload/VidyoDesktopInstaller-ubuntu64-TAG_VD_3_6_3_017.deb
DIR=vidyo_dir
DEB_ORIG=vidyo_orig.deb
DEB_FIXED=vidyo_fixed.deb

mkdir $DIR
wget $URL -O $DEB_ORIG
dpkg-deb -x $DEB_ORIG $DIR
dpkg-deb -e $DEB_ORIG $DIR/DEBIAN
sed -i "s/libqt4-gui (>= 4.8.1)/libqt4-designer,libqt4-opengl,libqt4-svg,libqtgui4,libqtwebkit4/" $DIR/DEBIAN/control
dpkg -b $DIR $DEB_FIXED
sudo dpkg -i $DEB_FIXED
rm -r $DIR $DEB_ORIG $DEB_FIXED
