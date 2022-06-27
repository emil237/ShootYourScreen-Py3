#!/bin/sh

#wget -q "--no-check-certificate" http://ipkinstall.ath.cx/ipk-install/PY3/ShootYourScreen/installer.sh -O - | /bin/sh

version=0.2.1
#############################################################
TEMPATH=/tmp
PLUGINPATH=/usr/lib/enigma2/python/Plugins/Extensions/ShootYourScreen

# remove old version
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/ShootYourScreen

echo ""
# Download and install plugin
cd /tmp
set -e
echo "===> Downloading And Installing ShootYourScreen plugin Please Wait ......"
echo
wget "http://ipkinstall.ath.cx/ipk-install/PY3/ShootYourScreen/ShootYourScreen.tar.gz"
tar -xzf ShootYourScreen.tar.gz -C /
set +e
rm -f ShootYourScreen.tar.gz

echo ""
sync
echo "##############################################################"
echo "#         ShootYourScreen $version INSTALLED SUCCESSFULLY    #"
echo "#             Uploded BY LINUXSAT - support on               #"
echo "##############################################################"
echo "**************************************************************"
echo "##############################################################"
echo "#              your Device will RESTART Now                  #"
echo "##############################################################"
sleep 3
exit 0