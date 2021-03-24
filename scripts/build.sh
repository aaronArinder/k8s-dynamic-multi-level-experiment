#!/bin/bash

# minikube and docker use differetn daemons; this makes minikube use docker's daemon
eval $(minikube docker-env)

docker build -t scaling-experiment .
