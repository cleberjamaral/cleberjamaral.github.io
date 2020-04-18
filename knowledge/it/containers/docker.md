# docker

### Troubleshooting

* Check docker service status `$ sudo service docker status` or `$ sudo journalctl -fu docker`
* Check if docker container daemon is running `$ ps -ax | grep docker`

### Starting, restarting and stopping docker

* Start `$ sudo service docker start` or `systemctl start docker.service`
* Restart `$ sudo service docker restart`
* Stop `$ sudo service docker stop`

