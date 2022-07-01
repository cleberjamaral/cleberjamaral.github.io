---
description: Asterisk with freepbx installation using docker
---

# asterisk

## A basic container just for tests

The following steps uses `tiredofit/freepbx` which already has an embedded MySql server.

### Prerequisites

Docker on the host machine

### Installation

1.  Download the 'tiredofit/freepbx' docker image running:&#x20;

    `$ docker pull tiredofit/freepbx:latest`&#x20;

    Instead of latest you can use another tag (this tutorial is based on version 15, i.e., to grab the exact same version you can run `$ docker pull tiredofit/freepbx:15).`
2.  Check if the image is ready&#x20;

    `$ docker image ls`&#x20;
3.  Create a container based on `tiredofit/freepbx` image (naming it _test_):&#x20;

    `$ docker run --name test tiredofit/freepbx`&#x20;

    After the execution of several procedures, including standard freepbx configuration files and the Web Server, zabbix and cron initialization, it is ready for our testing purposes.
4. Getting the freepbx web interface address:
   1. Open another terminal
   2.  Connect to the container (named _test_):

       `$ docker exec -it test bash`
   3.  Get the container IP address:

       `# ip -4 a`

### Using freepbx application

1.  Open a Web Browser and type on the search bar `http://<IP Address>/admin`

    Let us say, if the given IP is `172.17.0.2`, type in the search bar `http://172.17.0.2/admin`
2.  The interface of freepbx should be ready for tests.&#x20;

    For customizations on Asterisk, follow freepbx documentation.

### Closing the container

On the terminal which is running the container, press Ctrl+C

### Starting the container again

`$ docker start -ai test`

Running `$ docker run tiredofit/freepbx` again, creates a brand-new container
