---
description: Installing a kubernetes by microk8s
---

# installing kubernetes

### Installing microk8s and setting up your linux user

1. Installing microk8s `$ sudo snap install microk8s --classic`
2. Adding permission your user to microk8s group `$ sudo usermod -a -G microk8s $USER`
3. Adding permission for your user `$ sudo chown -f -R $USER ~/.kube`
4. Logging again `$ su - $USER`
5. Check if microk8s was installed `$ sudo snap list`
6. More details about the installation `$ sudo snap info microk8s`
7. Check if microk8s is running `$ microk8s.status --wait-ready`
8. Check if the node is READY `$ microk8s.kubectl get nodes`
   * If it is PENDING it is worth to check if the specific SO needs some extra configuration like [Debian Jessie](https://github.com/kubernetes/kubernetes-anywhere/blob/fd0670ba051bf96be335a3291dab7039a32381d7/FIXES.md#debian-8-and-cgroups).
9. Optionally you can create a link to kubectl `$ sudo snap alias microk8s.kubectl kubectl`

### Accessing master pod through http

* Proxy access to pods to debug them `$ microk8s.kubectl proxy`
* From another terminal: `$ curl http://localhost:8001/version`

### Stopping and starting kubernetes

* Stopping microk8s `$ microk8s.stop`
* Starting microk8s `$ microk8s.start`

### Troubleshooting

* Inspecting microk8s `$ microk8s.inspect`
* Resetting microk8s `$ microk8s.reset`

### Removing

* To remove microk8s: `$ sudo snap remove microk8s`

