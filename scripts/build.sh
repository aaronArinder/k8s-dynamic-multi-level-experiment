#!/bin/bash

# minikube and docker use different daemons; this makes it use
# minikube's docker daemon
# https://medium.com/bb-tutorials-and-thoughts/how-to-use-own-local-doker-images-with-minikube-2c1ed0b0968
eval $(minikube docker-env)

docker build -t scaling-experiment .
