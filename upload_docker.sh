#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="nnamaka/python-helloworld"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag flaskapp nnamaka/python-helloworld:flaskappV1.0.0

# Step 3:
# Push image to a docker repository
docker push nnamaka/python-helloworld:flaskappV1.0.0
