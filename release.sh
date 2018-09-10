#!/usr/bin/env bash
set -ex

# username of the docker hub or if you are using a different registry repo.
USERNAME=masudcsesust04
# image name
IMAGE=rails-starter-app

# ensure we're up to date
git pull origin masud/docker

# bump version
#d ocker run --rm -v "$PWD":/app masudcsesust04/bump patch

version=`cat VERSION`
echo "version: $version"

# run build
./build.sh

# tag it
git add -A
git commit -m "version $version"
git tag -a "$version" -m "version $version"
git push origin masud/docker
git push --tags
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

# push images to docker hub repository
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:$version
