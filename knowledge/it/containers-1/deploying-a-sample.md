---
description: Deploying a sample containing a static web-site and using nginx web-server
---

# deploying a sample

Following [docker-curriculum](https://docker-curriculum.com/) tutorial and a web-server for a simple static web-site example.

### Downloading and running the image

* Running \(and downloading if necessary\) `$ docker run --rm prakhar1989/static-site`
* Running with detached terminal `$ docker run -d --rm prakhar1989/static-site`
  * To stop this container, execute the command `$ docker ps -a` to get the `container_id` and `$ docker rm container_id -f` \(-f to force\)

### Giving a name to the container

* Running detached giving a name `$ docker run -d --name static-site prakhar1989/static-site`

### Exposing ports

* Running and exposing preconfigured ports `$ docker run -d -P --name static-site prakhar1989/static-site`
* Show exposed ports `$ docker port static-site`
* Forwarding requests of a specific port to a container's internal port `$ docker run -p 8888:80 prakhar1989/static-site`
  * Browse to [http://127.0.0.1:8888](http://127.0.0.1:8888) should show nginx welcome page

### Stopping the container named static-site

* To stop this container `$ docker stop static-site`
  * A command to prune containers is necessary to clean the cache
* To stop this container cleaning the cache `$ docker rm static-site -f`

