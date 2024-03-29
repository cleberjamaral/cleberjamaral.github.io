# linux

[Create user on sudoers and add key on Linux](https://gist.github.com/cleberjamaral/3e4743abc3016d87e286876ec20ab050)

### Setting alternatives

For instance, for python3:&#x20;

`$ sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1`\
`$ sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2`

Selecting from alternatives:

`$ sudo update-alternatives --config python3`

### Symbolic links

Creating: `$ ln -s FILE LINK`

### Hardware and software info

* To get the linux release details: `$ lsb_release -a`
* Kernel, network and machine main info `$ uname -a`
* List cpu info `$ lscpu`
* Memory `$ free` or `$ cat /proc/meminfo`
* Usb controllers info `$ lsusb`
* File system info `$ sudo fdisk -l`

### dd command -convert and copy

To format the volume

`$ sudo dd bs=4M if=/dev/zero of=/dev/device oflag=sync status=progress`

To copy an image to the volume

`$ sudo dd bs=4M if=/path/file.img of=/dev/device oflag=sync status=progress`

