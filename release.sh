#!/usr/bin/env bash
set -ex

# username of the docker hub or if you are using a different registry repo.
USERNAME=masudcsesust04
# image name
IMAGE=rails-starter-app

# ensure we're up to date
git pull origin master

# bump version
#d ocker run --rm -v "$PWD":/app masudcsesust04/bump patch

version=`cat VERSION`
echo "version: $version"

# run build
./build.sh

# tag it
git add -A
git commit -m "Release version $version"
git tag -a "v$version" -m "Relaase version $version"
git push origin master
git push --tags
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

# push images to docker hub repository
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version

