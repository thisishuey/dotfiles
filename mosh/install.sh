PREFIX=$HOME
PROTOBUF_VERSION=3.6.1
MOSH_VERSION=1.3.2

# Install Protocol Buffers
wget https://github.com/protocolbuffers/protobuf/releases/download/v$PROTOBUF_VERSION/protobuf-all-$PROTOBUF_VERSION.tar.gz
tar -xf protobuf-all-$PROTOBUF_VERSION.tar.gz 
cd protobuf-$PROTOBUF_VERSION 
./configure --prefix=$PREFIX
make
make install
cd ..

# You'll need this setting to have mosh find the Protocol Buffer lib
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig

# Install mosh
wget https://github.com/mobile-shell/mosh/releases/download/mosh-$MOSH_VERSION/mosh-$MOSH_VERSION.tar.gz
tar -xf mosh-$MOSH_VERSION.tar.gz 
cd mosh-$MOSH_VERSION
./configure --prefix=$PREFIX
make
make install

echo "You can run this to verify the install worked:"
echo "  $ export LD_LIBRARY_PATH=$PREFIX/lib"
echo "  $ mosh-server"
echo "(Running mosh-server should give you a pid and a key to use if you want to connect manually)"

echo "To connect to the server in the future, run this on your local machine:"
echo "  $ mosh --server="LD_LIBRARY_PATH=$PREFIX/lib $PREFIX/bin/mosh-server" $USER@$(hostname -f)"