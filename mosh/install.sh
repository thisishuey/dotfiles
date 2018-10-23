PREFIX=$HOME
VERSION=1.3.2

# Install Protocol Buffers
wget http://protobuf.googlecode.com/files/protobuf-2.4.1.tar.bz2
tar -xf protobuf-2.4.1.tar.bz2 
cd protobuf-2.4.1
./configure --prefix=$PREFIX
make
make install
cd ..

# You'll need this setting to have mosh find the Protocol Buffer lib
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig

# Install mosh
wget https://github.com/downloads/keithw/mosh/mosh-$VERSION.tar.gz
tar -xf mosh-$VERSION.tar.gz 
cd mosh-$VERSION
./configure --prefix=$PREFIX
make
make install

echo You can run this to verify the install worked:
echo   $ export LD_LIBRARY_PATH=$PREFIX/lib
echo   $ mosh-server
echo (Running mosh-server should give you a pid and a key to use if you want to connect manually)

echo To connect to the server in the future, run this on your local machine:
echo   $ mosh --server="LD_LIBRARY_PATH=$PREFIX/lib $PREFIX/bin/mosh-server" $USER@$(hostname -f)