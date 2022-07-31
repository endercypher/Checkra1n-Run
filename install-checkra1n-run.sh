#/bin/sh

echo Getting Dependencies...
sudo apt-get install ideviceinstaller python-imobiledevice libimobiledevice-utils python-plist ifuse usbmuxd libusbmuxd-tools

echo Done!

echo "Getting Checkra1n & Setting it up...."

wget https://assets.checkra.in/downloads/linux/cli/arm/ff05dfb32834c03b88346509aec5ca9916db98de3019adf4201a2a6efe31e9f5/checkra1n

wget https://endercypher.dev/Checkra1n-Run/checkra1n.service

sudo mv ./checkra1n /bin/checkra1n
sudo mv ./checkra1n.service /lib/systemd/system/

sudo chmod 755 /bin/checkra1n
sudo chmod 755 /lib/systemd/system/checkra1n.service

sudo systemctl start checkra1n
sudo systemctl enable checkra1n
