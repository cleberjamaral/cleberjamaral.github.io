---
description: Deploying bootcamp sample application
---

# deploying bootcamp

### Deploying kubernetes-bootcamp application

* Deploying demo: `$ microk8s.kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1`
* Get all pods: `$ microk8s.kubectl get pods`

### Accessing bootcamp deployment

* Set environment variable $POD\_NAME to make further commands easier `$ export POD_NAME=$(microk8s.kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')` 
  * If it does not work run `$ microk8s.kubectl get pods` copy the name of the pod and set the variable manually `$ export POD_NAME=kubernetes-bootcamp-XXXXX`
* Enabling proxy access to debug pods `$ microk8s.kubectl proxy`
  * Get information from the created pod \(from another terminal\)

    `$ curl http://localhost:8001/api/v1/namespaces/default/pods/$POD_NAME/proxy/`
* Get environment variables `$ microk8s.kubectl exec $POD_NAME -- env`
* Run terminal of the pod `$ microk8s.kubectl exec -ti $POD_NAME bash`
* Show a file content `# cat server.js`
  * Type `exit` to leave the section

### Exposing the deployment

* Get current services `$ microk8s.kubectl get services`
* Expose bootcamp deployment on port 8080 `$ microk8s.kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080`
* Get current services, now with the exposed pod `$ microk8s.kubectl get services`
* Describing the created service `$ microk8s.kubectl describe services/kubernetes-bootcamp`
* Checking if it is working, from the given IP try a curl on IP:8080
* Removing the service `$ microk8s.kubectl delete services/kubernetes-bootcamp`

### Removing the demo application

* Removing demo: `$ microk8s.kubectl delete deployment.apps/kubernetes-bootcamp`

