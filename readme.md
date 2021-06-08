# WIP
This readme will function as notes until the experiment works. I'll add proper docs then. It's an attempt at implementing a [paper by Taherizadeh and Stankovski](https://academic.oup.com/comjnl/article/62/2/174/4993728).

## Notes
- run `minikube tunnel` for the load balancer to work properly
    - run `minikube tunnel --cleanup` if the tunnel shuts down sloppily
- make sure minikube has the metrics server enabled: `minikube addons enable metrics-server`
- figure out local cpu/mem limits for pods to actually get all pods up/healthy


## Resources
### docker
    - https://bitfieldconsulting.com/golang/docker-image

### kubernetes/minikube
#### minikube
  - https://minikube.sigs.k8s.io/docs/handbook/accessing/
  - https://medium.com/bb-tutorials-and-thoughts/how-to-use-own-local-doker-images-with-minikube-2c1ed0b0968
#### cheatsheet
  - https://kubernetes.io/docs/reference/kubectl/cheatsheet/
#### hpa
  - https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/

