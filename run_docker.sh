#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t jprottung/udacity-microservices-project .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run --name microservices-flask-app -p 8000:80 jprottung/udacity-microservices-project
