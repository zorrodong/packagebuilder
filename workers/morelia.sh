#!/bin/bash

export PACKAGEBUILDER_RSAKEY="/Users/pkgbuild/packagebuilder/.packagebuilder.private_key.rsa"


cd /Users/pkgbuild/packagebuilder
pushd /Users/biocbuild/BBS/$2/bioc/morelia

. config.sh

popd


export BBS_USER="pkgbuild"
export SVN_USER="pkgbuild"
export SVN_PASS="buildpkg"

export BBS_PYTHON_CMD="/usr/bin/python"
#"/Users/pkgbuild/python/bin/python"

export SPB_R_LIBS="/Users/pkgbuild/packagebuilder/R-libs"

$BBS_PYTHON_CMD builder.py $1
 
 