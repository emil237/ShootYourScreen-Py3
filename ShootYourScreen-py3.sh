#!/bin/sh

#wget -q "--no-check-certificate" https://raw.githubusercontent.com/emil237/ShootYourScreen-Py3/main/ShootYourScreen-py3.sh -O - | /bin/sh

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
wget "https://raw.githubusercontent.com/emil237/ShootYourScreen-Py3/main/ShootYourScreen-py3.tar.gz"
tar -xzf ShootYourScreen-py3.tar.gz -C /
set +e
rm -f ShootYourScreen-py3.tar.gz

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
