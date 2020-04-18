---
description: Deploying nginx sample application
---

# deploying nginx

### Deploying nginx application

* Deploying demo: `$ microk8s.kubectl create deployment nginx --image=nginx`
* Get all pods: `$ microk8s.kubectl get pods`
* Get all info from all namespaces: `$ microk8s.kubectl get all --all-namespaces`
* Get node log: `$ microk8s.kubectl describe nodes`

