!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t ducluanxutrieu/project-ml-microservice-k8s .
# Step 2: 
# List docker images
docker images
# Step 3: 
# Run flask app
docker run --name ml-k8s -d -p 8082:80 ducluanxutrieu/project-ml-microservice-k8s