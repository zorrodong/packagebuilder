#!/bin/bash

echo "in zin2.sh"

export PACKAGEBUILDER_RSAKEY="/home/pkgbuild/packagebuilder/.packagebuilder.private_key.rsa"


cd /home/pkgbuild/packagebuilder 

pushd /home/biocbuild/BBS/$2/bioc/zin2

. config.sh

popd



export BBS_USER="pkgbuild"
export SVN_USER="pkgbuild"
export SVN_PASS="buildpkg"
export USER="pkgbuild"
 
$BBS_PYTHON_CMD builder.py $1
 