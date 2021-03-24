#!/bin/bash

# for safety's sake, set KUBECONFIG to kubemini's context
export KUBECONFIG=~/.kube/minikube
eval $(minikube docker-env)
kubectl set image deployment/scaling-experiment-deployment scaling-experiment=scaling-experiment:latest
