#!/bin/bash

# for safety's sake, set KUBECONFIG to kubemini's context
export KUBECONFIG=~/.kube/minikube
kubectl apply -f ./manifest.yml

