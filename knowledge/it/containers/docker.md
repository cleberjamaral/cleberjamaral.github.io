# docker

* Show docker images `$ sudo docker images`
* Inspecting an image `$ sudo docker image inspect image_id`
* Removing an image `$ sudo docker image rm image_id`
  * To force removing associated container `$ sudo docker image rm image_id -f`

### Troubleshooting

* Check docker service status `$ sudo service docker status` or `$ sudo journalctl -fu docker`
* Check if docker container daemon is running `$ ps -ax | grep docker`

### Starting, restarting and stopping docker

* Start `$ sudo service docker start` or `systemctl start docker.service`
* Restart `$ sudo service docker restart`
* Stop `$ sudo service docker stop`

