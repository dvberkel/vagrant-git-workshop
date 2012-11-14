#! /usr/bin/env bash

cd ~/scratch
mkdir original_repo

cd original_repo

echo <<EOF
#! /usr/bin/env perl

print "Hello World";
EOF
> greeting.pl

chmod 754 greeting.pl

git init
git add greeting.pl
git commit -m "fresh repository to work with"
