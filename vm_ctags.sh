#! /bin/sh
#
# vm_ctags.sh
# Copyright (C) 2020 v.m. <vincent_ma0001@hotmail.com>
#
# Distributed under terms of the MIT license.
#

ctags  -R \
        --languages=c,c++ \
        --langmap=c++:+.inl \
        -h +.inl \
        --c++-kinds=+px \
        --fields=+afmikKlnsStz \
        --format=2 \
        --sort=no \
        --extra=+q \
        --exclude=/vm/vm_tools/bin \
        --exclude=/vm/vm_tools/lib \
        --exclude=/vm/vm_tools/prj \
        --exclude=/vm/vm_tools/.git \
        --exclude=/vm/vm_tools/.gitignore \
        -f ./vtags \
        /vm/vm_tools/

