#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
user=mvechtomova
dockerpath=udacity-ml-microservice
tag=version0.1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat secret.txt | docker login --username $user --password-stdin
docker tag $dockerpath:latest $user/$dockerpath:$tag

# Step 3:
# Push image to a docker repository
docker push $user/$dockerpath:$tag
