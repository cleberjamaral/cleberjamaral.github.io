# linux

[Create user on sudoers and add key on Linux](https://gist.github.com/cleberjamaral/3e4743abc3016d87e286876ec20ab050)

### Compressing pdf

1. Type the following command \([source](https://www.techwalla.com/articles/reduce-pdf-file-size-linux)\)`$ gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=setting -sOutputFile=output.pdf input.pdf`
2. Set the input file name properly as well as the output file name if wanted.
3. in -dPDFSETTINGS use:
   * /screen for lowest quality
   * /ebook for medium quality
   * /printer and /prepress for high quality

### Setting alternatives

For instance, for python3: 

`$ sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1`  
`$ sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2`

Selecting from alternatives:

`$ sudo update-alternatives --config python3`

### Symbolic links

Creating: `$ ln -s FILE LINK`

### Hardware and software info

* To get the linux release details: `$ lsb_release -a`
* Kernel, network and machine main info `$ uname -a`
* List cpu info `$ lscpu`
* Usb controllers info `$ lsusb`
* File system info `$ sudo fdisk -l`

### tmux

* [How to use tmux](https://gist.github.com/cleberjamaral/5ac549e099a3f5de947c0064a2a30450)

