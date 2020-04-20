---
description: Deploying busybox sample docker container
---

# deploying busybox

### Pulling and running busybox image

* Pulling the image `$ docker pull busybox`
* Executing a simple command on busybox `$ docker run busybox echo "hello from busybox"`

### Running terminal on busybox

* Open terminal on busybox `$ docker run -it busybox sh`

### Deleting all exited containers

* List last commands that ran recently`$ docker ps -a`
* Deleting stopped containers `$ docker container prune` or  `$ docker rm $(docker ps -a -q -f status=exited)`

### 

### 

