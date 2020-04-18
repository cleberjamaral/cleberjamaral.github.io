---
description: Deploying nginx sample application
---

# deploying nginx

[Nginx](http://nginx.org/en/), pronounced engine x, is an HTTP and reverse proxy server[.](http://nginx.org/en/)

### Deploying nginx application

* Deploying demo: `$ microk8s.kubectl create deployment nginx --image=nginx`
* Get all pods: `$ microk8s.kubectl get pods`

### Accessing nginx pod

* Run `$ microk8s.kubectl get pods` copy the name of the pod and set the variable manually `$ export POD_NAME=nginx-XXXXX`
* Enabling proxy access to debug pods `$ microk8s.kubectl proxy`
  * Get information from the created pod \(from another terminal\) `$ curl http://localhost:8001/api/v1/namespaces/default/pods/$POD_NAME/proxy/`
* Get environment variables `$ microk8s.kubectl exec $POD_NAME -- env`
* Run terminal of the pod `$ microk8s.kubectl exec -ti $POD_NAME bash`
  * Type `exit` to leave the section

### Troubleshooting

* Describe pod `$ microk8s.kubectl describe $POD_NAME`

### Removing nginx deployment

* Removing `$ microk8s.kubectl delete deployment.apps/nginx`

