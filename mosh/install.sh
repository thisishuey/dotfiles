#!/usr/bin/env bash

# Copied from: https://gist.github.com/jaywilliams/c9ffab789b3f622abc932dd4cfaaeef5

# Thanks to @samsonjs for the cleaned up version:
# https://gist.github.com/samsonjs/4076746

PREFIX=$HOME/local
VERSION=1.3.2

# Create Source Directory
mkdir -p $PREFIX/src
cd $PREFIX/src

# Install Protocol Buffers
wget https://github.com/google/protobuf/releases/download/v2.6.1/protobuf-2.6.1.tar.gz
tar -xf protobuf-2.6.1.tar.gz
cd protobuf-2.6.1
./configure --prefix=$PREFIX
make
make install
cd ..

# Install Ncurses (This was needed on CentOS, probably not necessary on Dreamhost)
wget https://invisible-mirror.net/archives/ncurses/ncurses-5.9.tar.gz
tar -xf ncurses-5.9.tar.gz
cd ncurses-5.9
./configure --prefix=$PREFIX --with-shared --without-debug  --without-normal
make
make install
cd ..

# You'll need this setting to have mosh find the Protocol Buffer lib
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig
export PATH=$PREFIX/bin:$PATH

# Install mosh (Link to our curses library)
wget https://mosh.org/mosh-$VERSION.tar.gz
tar -xf mosh-$VERSION.tar.gz
cd mosh-$VERSION
./configure --prefix=$PREFIX --with-curses=$PREFIX
make
make install

# Post-Install Notes
echo 'To connect to the mosh server, run this on your local machine:'
echo "    $ mosh --server=\"LD_LIBRARY_PATH=$PREFIX/lib $PREFIX/bin/mosh-server\" $USER@$(hostname -f)"

echo 'Or add following lines to your ~/.bashrc (or other applicable shell) file:'
echo "    export LD_LIBRARY_PATH=$PREFIX/lib"
echo "    export PATH=$PREFIX/bin:\$PATH"
echo 'Afterwards, you can simply run this on your local machine:'
echo "    $ mosh $USER@$(hostname -f)"