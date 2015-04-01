#!/bin/tcsh

setenv vi_cv_path_python /home/robn/Apps/python26/bin/python
cd vim74
#TODO: build python from scratch because fuck having it installed already
./configure \
--prefix=/home/robn/Apps/vim \
--with-features=huge \
--enable-rubyinterp \
--enable-pythoninterp \
--with-python-config-dir=/home/robn/Apps/python26/lib/python2.6/config \
--enable-tclinterp \
--with-x=yes \
--enable-xim \
--enable-multibyte \
--enable-gui=auto \
--enable-luainterp \
--enable-perlinterp \
--enable-cscope \
--enable-netbeans \
--disable-selinux

make -j13
make install
