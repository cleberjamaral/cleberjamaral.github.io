---
description: Installing a kubernetes by microk8s
---

# installing kubernetes

### Installing microk8s and setting up your linux user

1. Installing microk8s: `$ sudo snap install microk8s --classic`
2. Adding permission your user to microk8s group: `$ sudo usermod -a -G microk8s $USER`
3. Adding permission for your user: `$ sudo chown -f -R $USER ~/.kube`
4. Logging again: `$ su - $USER`
5. Check if microk8s is running: `$ microk8s.status --wait-ready`
6. Check if the node is READY: `$ microk8s.kubectl get nodes`
   * If it is PENDING it is worth to check if the specific SO needs some extra configuration like [Debian Jessie](https://github.com/kubernetes/kubernetes-anywhere/blob/fd0670ba051bf96be335a3291dab7039a32381d7/FIXES.md#debian-8-and-cgroups).

### Accessing master pod through http

* Proxy access to pods to debug them `$ microk8s.kubectl proxy`
* From another terminal: `$ curl http://localhost:8001/version`
* Set environment variable $POD\_NAME to make further commands easier `$ export POD_NAME=$(microk8s.kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')`
  * If it does not work run `$ microk8s.kubectl get pods` copy the name of the pod and set the variable manually `$ export $POD_NAME=kubernetes-bootcamp-XXXXX`
* Get information from the created pod: `$ curl http://localhost:8001/api/v1/namespaces/default/pods/$POD_NAME/proxy/`

### Grafana: Enabling, disabling and accessing

* Enabling: `$ microk8s.enable dashboard dns`
* Disabling: `$ microk8s.disable dashboard dns`
* Get all info from all namespaces: `$ microk8s.kubectl get all --all-namespaces`
* Access on browser the IP on port 443 for service/kubernetes-dashboard  

### Stopping and starting microk8s

* Stopping: `$ microk8s.stop`
* Starting: `$ microk8s.start`

### Microk8s troubleshooting

* Inspecting: `$ microk8s.inspect`
* Reset: `$ microk8s.reset`

### Removing microk8s

* To remove microk8s: `$ sudo snap remove microk8s`

### Sources

* [kubernetes-with-microk8s](https://ubuntu.com/tutorials/install-a-local-kubernetes-with-microk8s#4-accessing-the-kubernetes-and-grafana-dashboards)
* [microk8s docs](https://microk8s.io/docs/)
* [kubernetes bootcamp tutorial](https://kubernetes.io/docs/tutorials/kubernetes-basics/) \([old version](https://kubernetesbootcamp.github.io/kubernetes-bootcamp/)\)

