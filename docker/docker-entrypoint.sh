#!/bin/sh
set -e

sudo chown -R huey:huey ~/.host
chmod 700 ~/.host/ssh
chmod 644 ~/.host/ssh/id_rsa.pub
chmod 600 ~/.host/ssh/id_rsa

mkdir -p ~/.ssh
ln -s ~/.host/ssh/id_rsa.pub ~/.ssh/id_rsa.pub
ln -s ~/.host/ssh/id_rsa ~/.ssh/id_rsa

exec "$@"
