# First, update gcc to get c++11 support
sudo apt-get install g++-4.7
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.6 
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.7 40 --slave /usr/bin/g++ g++ /usr/bin/g++-4.7 
sudo update-alternatives --config gcc

# Clone and build SoftFM
git clone https://github.com/jorisvr/SoftFM.git
cd SoftFM
mkdir build
cd build
cmake ..

#cmake .. -DCMAKE_INSTALL_PREFIX=../rtl-sdr
#cmake .. -DRTLSDR_INCLUDE_DIR=../rtl-sdr/include -DRTLSDR_LIBRARY_PATH=../rtl-sdr/lib/librtlsdr.a
#PKG_CONFIG_PATH=../rtl-sdr/lib/pkgconfig cmake ..

make
