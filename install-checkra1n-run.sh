#/bin/sh

echo Getting Dependencies...
sudo apt-get install ideviceinstaller python-imobiledevice libimobiledevice-utils python-plist ifuse usbmuxd libusbmuxd-tools

echo Done!

echo "Getting Checkra1n & Setting it up...."

wget https://assets.checkra.in/downloads/linux/cli/arm/d751f4b245bd4071c571654607ca4058e9e7dc4a5fa30639024b6067eebf5c3b/checkra1n

wget https://endercypher.dev/Checkra1n-Run/checkra1n.service

sudo mv ./checkra1n /bin/checkra1n
sudo mv ./checkra1n.service /lib/systemd/system/

sudo chmod 775 /bin/checkra1n
sudo chmod 777 /lib/systemd/system/checkra1n.service

sudo systemctl start checkra1n
sudo systemctl enable checkra1n
