---
description: Deploying bootcamp sample application
---

# deploying bootcamp

### Deploying kubernetes-bootcamp application

* Deploying demo: `$ microk8s.kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1`
* Get all pods: `$ microk8s.kubectl get pods`
* Get all info from all namespaces: `$ microk8s.kubectl get all --all-namespaces`
* Get node log: `$ microk8s.kubectl describe nodes`

### Accessing bootcamp pod

* Set environment variable $POD\_NAME to make further commands easier `$ export POD_NAME=$(microk8s.kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')`. If it does not work run `$ microk8s.kubectl get pods` copy the name of the pod and set the variable manually `$ export $POD_NAME=kubernetes-bootcamp-XXXXX`
* Get environment variables `$ microk8s.kubectl exec $POD_NAME -- env`
* Run terminal of the pod `$ microk8s.kubectl exec -ti $POD_NAME bash`
* Show a file content `# cat server.js`

### Exposing a deployment

* Get current services `$ microk8s.kubectl get services`
* Expose bootcamp deployment on port 8080 `$ microk8s.kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080`
* Get current services, now with the exposed pod `$ microk8s.kubectl get services`
* Describing the created service `$ microk8s.kubectl describe services/kubernetes-bootcamp`

### Removing the demo application

* Removing demo: `$ microk8s.kubectl delete deployment.apps/kubernetes-bootcamp`

### Sources

* [kubernetes-with-microk8s](https://ubuntu.com/tutorials/install-a-local-kubernetes-with-microk8s#4-accessing-the-kubernetes-and-grafana-dashboards)
* [microk8s docs](https://microk8s.io/docs/)
* [kubernetes bootcamp tutorial](https://kubernetes.io/docs/tutorials/kubernetes-basics/) \([old version](https://kubernetesbootcamp.github.io/kubernetes-bootcamp/)\)

