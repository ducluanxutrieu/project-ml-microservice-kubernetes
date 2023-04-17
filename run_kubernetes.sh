#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ducluanxutrieu/project-ml-microservice-k8s

# Step 2
# Run the Docker Hub container with kubernetes
kubectl get nodes
kubectl create deploy ml-k8s --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get nodes
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/ml-k8s --address 0.0.0.0 8082:80