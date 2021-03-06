#!/bin/bash

# for safety's sake, set KUBECONFIG to kubemini's context
export KUBECONFIG=~/.kube/minikube
minikube service scaling-experiment
