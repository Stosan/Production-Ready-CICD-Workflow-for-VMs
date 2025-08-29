#!/bin/bash
# Build and push image with dynamic date tag
DATE_TAG=$(date +'%Y%m%d_%H')
IMAGE_NAME="your_docker_username/your_dockerhub_repo:$DATE_TAG"

# Build image
sudo docker build -t "$IMAGE_NAME" -f Dockerfile .
echo "Image built: $IMAGE_NAME"

# Push to Docker registry
sudo docker push "$IMAGE_NAME"
echo "Image pushed: $IMAGE_NAME"

# Build and tag the remaining services
sudo docker build -t your_image_name:latest -f Dockerfile .
echo "Image built: your_image_name:latest"