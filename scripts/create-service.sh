#!/bin/bash

# for safety's sake, set KUBECONFIG to kubemini's context
export KUBECONFIG=~/.kube/minikube
kubectl expose deployment scaling-experiment --type=LoadBalancer --port=8080

