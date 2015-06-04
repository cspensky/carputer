# Base dependencies
sudo apt-get update
sudo apt-get install cmake build-essential python-pip libusb-1.0-0-dev python-numpy git

# RTL-SDR
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON -DDETACH_KERNEL_DRIVER=ON
make -j4
sudo make install
sudo ldconfig
cd ../..

