#! /bin/bash

# NOTE: Build the image and run this on the guest (binding host $HOME)

pip install --user -r ./requirements.txt

# NOTE: lightgbm python interface with CUDA support
cd /var/tmp
git clone --recursive https://github.com/microsoft/LightGBM
cd LightGBM
ln -s /opt/lightgbm/build/lib_lightgbm.so .
bash build-python.sh install --cuda --precompile

rm -rf /var/tmp/LightGBM
