#! /bin/bash

rm -rvf ./80m.img
cp -rvf ../a/80m.img ./
chown cg ./80m.img
make clean
make image
cd command
make install
cd ..
