# deploying jacamo-rest

Deploying `cleberjamaral/jacamo-rest-run`, available at [docker hub](https://hub.docker.com/repository/docker/cleberjamaral/jacamo-rest-run/).

### Deploying

* Deploying `cleberjamaral/jacamo-rest-run` which is available in [docker hub](https://hub.docker.com/repository/docker/cleberjamaral/jacamo-rest-run/)`$ microk8s.kubectl create deployment jacamo-rest --image=cleberjamaral/jacamo-rest-run`
* Get pod name `$ export POD_NAME=$(microk8s.kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')`

### Exposing ports

* Exposing `$ microk8s.kubectl expose deployment/jacamo-rest --type="NodePort" --port 3271,3272,3273,8080`
* Check IP provided for the **jacamo-rest** created service `$ microk8s.kubectl get services`
* Performing a simple test `$ curl http://provided_IP:8080/overview`

### Forwarding connections

* `port-forward` option needs [socat installed on the host](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#port-forward).
* In [theory](https://kubernetes.io/docs/tasks/access-application-cluster/port-forward-access-application-cluster/), is seems a port forward of host to the service/deployment/pod should be a good solution but in the first tests it is not working yet. I have tried `$ microk8s.kubectl port-forward deployment.apps/jacamo-rest 8080:8080` 
* However, what is working is directly through socat `$ socat TCP-LISTEN:8080,fork,reuseaddr TCP:provided_IP:8080`

### Opening terminal

* Open terminal `$ microk8s.kubectl exec -ti $POD_NAME -- bash`

### Troubleshooting

* Describe pod `$ microk8s.kubectl describe pod/$POD_NAME`
* Get logs `$ microk8s.kubectl logs pod/$POD_NAME`

