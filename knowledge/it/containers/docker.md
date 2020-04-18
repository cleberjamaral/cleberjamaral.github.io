---
description: Docker containers
---

# docker

### Creating and running an image

* Building an image with a tag `$ sudo docker build -t a_tag .`
* Check existing images `$ sudo docker images`
* Create a network `$ sudo docker network create network_name`
* Run a docker image `$ sudo docker run -ti --rm --net network_name --name host1 -v "$(pwd)":/app a_tag a_command`

### Removing an image

* Removing an image `$ sudo docker image rm image_id`
  * To force removing associated container `$ sudo docker image rm image_id -f`

### Troubleshooting

* Check docker service status `$ sudo service docker status` or `$ sudo journalctl -fu docker`
* Check if docker container daemon is running `$ ps -ax | grep docker`
* Show docker images `$ sudo docker images`
* Inspecting an image `$ sudo docker image inspect image_id`

### Starting, restarting and stopping docker

* Start `$ sudo service docker start` or `systemctl start docker.service`
* Restart `$ sudo service docker restart`
* Stop `$ sudo service docker stop`

