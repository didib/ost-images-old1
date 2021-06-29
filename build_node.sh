#!/bin/bash -xe

autoreconf -if

prefix=/usr
libdir=$prefix/lib64
sysconfdir=/etc
localstatedir=/var
./configure --prefix=$prefix --libdir=$libdir --sysconfdir=$sysconfdir --localstatedir=$localstatedir

export DISTRO=node
export SPARSIFY_BASE=no
export DISK_SIZE=80G
export BUILD_UPGRADE=
export BUILD_BASE=yes
export BUILD_ENGINE_INSTALLED=
export BUILD_HOST_INSTALLED=
export BUILD_HE_INSTALLED=
export INSTALL_URL=/home/ybardavi/node/ovirt-node-ng-installer-4.4.6-2021051809.el8.iso

make -d -e rpm
