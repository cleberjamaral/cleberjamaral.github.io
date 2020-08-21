# installing docker

### Post-installation steps for linux

* Create a docker group `$ sudo groupadd docker`
* Add your user to docker group `$ sudo usermod -aG docker $USER`
* Log again `$ su - $USER`

### Testing docker

* Run hello-world application `$ sudo docker run hello-world`
* Docker version `$ docker version`
* Docker system's general information `$ docker info`
* Docker list of running containers `$ docker ps`
  * Status of running containers `$ docker stats`
* Docker list of all containers `$ docker ps -a`

### Docker useful commands \(run\)

* Dettach terminal `-d`
* Forward port `-p host_port:container_port` 
* Set workdir `-w /path/to/app`

### Troubleshooting

* Check docker service status `$ sudo service docker status` or `$ sudo journalctl -fu docker`
* Check if docker container daemon is running `$ ps -ax | grep docker`
* Show docker images `$ sudo docker images`
* Inspecting an image `$ sudo docker image inspect image_id`
* a more extreme action can be `$ sudo rm -rf /var/lib/docker`

### Starting, restarting and stopping docker

* Start `$ sudo service docker start` or `systemctl start docker.service`
* Restart `$ sudo service docker restart`
* Stop `$ sudo service docker stop`

