---
description: Deploying docker containers
---

# deploying containers

### Creating and running an image

* Building an image with a tag `$ sudo docker build -t a_tag .`
* Check existing images `$ sudo docker images`
* Create a network `$ sudo docker network create network_name`
* Run a docker image `$ sudo docker run -ti --rm --net network_name --name host1 -v "$(pwd)":/a_folder a_repository a_command`

### Pulling an image from a docker repository

* Pulling an image from dockerhub `$ sudo docker pull user/repository:tag`

### Removing an image

* Removing an image `$ sudo docker image rm image_id`
  * To force removing associated container `$ sudo docker image rm image_id -f`

### 

### 

