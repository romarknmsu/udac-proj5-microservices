#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=romarknmsu/udacproj

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacproj --image=romarknmsu/udacproj --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "sleeping for 30 seconds while waiting for pod to come up"
sleep 30
kubectl port-forward deployment/udacproj 8000:80 
kubectl logs --selector app=udacproj