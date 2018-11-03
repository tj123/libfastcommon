#!/bin/env bash

version="1.0.40"
project="libfastcommon"
spec=$project.spec

./make.sh clean
rm -rf ~/rpmbuild
mkdir -pv ~/rpmbuild/{SOURCES,SPECS}
tar zcvf ~/rpmbuild/SOURCES/$project-$version.tar.gz ./ --exclude-vcs --transform=s/^\\./$project-$version/
cp ./$spec ~/rpmbuild/SPECS/
rpmbuild -bb ~/rpmbuild/SPECS/$spec