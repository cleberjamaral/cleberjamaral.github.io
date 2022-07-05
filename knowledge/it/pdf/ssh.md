# ssh

### Creating an RSA key

`$ ssh-keygen -t rsa`

By default, this will create two files at `~/.ssh`: `id_rsa` and `id_rsa.pub`

### Copying the public key to a server

`$ ssh-copy-id -i .ssh/id_rsa.pub user@server`

### Setting the authorized\_keys file

`$ cat id_rsa.pub >> authorized_keys`

### Make sure files permissions are right

`$ chmod 700 ~/.ssh`

`$ chmod 600 ~/.ssh/authorized_keys`



