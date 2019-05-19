echo "###########################################################"
echo "#    this installer is rpi-i2s-audio installer v_0_0_1    #"
echo "###########################################################"
sleep 2
echo "starting the installer"
sleep 0.9
echo "ok!"
sleep 3
echo "install the github..."
sleep 1
git clone https://github.com/PaulCreaser/rpi-i2s-audio
echo "Done!"
sleep 0.5
cd rpi-i2s-audio
sleep 1
echo "make the modules..."
sleep 1
make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
sleep 1
echo "Done!"
sleep 1
echo "Load I2S Driver..."
sleep 1
sudo insmod my_loader.ko
echo "checking if I2S driver has been installed..."
sleep 2
lsmod | grep my_loader
sleep 5
echo "checking if the I2S driver is working"
sleep0.5
echo "[50% Ok]" 
sleep 2
dmesg | tail
sleep 1
dmesg | grep asoc
sleep 1
echo "Done!"
sleep 0.5
echo "The driver is loaded automatically at startup..."
sudo cp my_loader.ko /lib modules/$(uname -r)
echo 'my_loader' | sudo tee --append /etc/modules > /dev/null
sudo depmod -a
sudo modprobe my_loader
sleep 2
echo "[100%Ok]"
sleep 5
echo "Restarting...(reboot...)"
sleep 2
sudo reboot
