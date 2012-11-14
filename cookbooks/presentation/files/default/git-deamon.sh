#! /usr/bin/env sh
git daemon --verbose --enable=receive-pack --base-path=`pwd` --export-all 