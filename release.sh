#!/usr/bin/env bash
set -ex

# ensure we're up to date
git pull origin master

version=`cat VERSION`
echo "version: $version"

# git repository release tag
git add -A
git commit -m "Release version $version"
git tag -a "v$version" -m "Relaase version $version"
git push origin master
git push --tags

