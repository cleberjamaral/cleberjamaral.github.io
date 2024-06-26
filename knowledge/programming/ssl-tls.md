# ssl/tls

## Using certbot

Certbot is a tool that helps to get and keep certificates updates

If Certbot isn't already installed, run the following commands:

```
$ sudo apt update
$ sudo apt install certbot
```

Check existing certificates:

<pre><code><strong>$ sudo certbot certificates
</strong></code></pre>

To update the existing certificates, first stop your webserver (nginx, apache, or another):

```
$ sudo systemctl stop apache2
or
$ sudo systemctl stop nginx
```

You can check if your Certbot is set properly for renewing the certificate:

```
$ sudo certbot renew --dry-run
```

If everything is well, you can renew the certificate running:

```
$ sudo certbot renew
```

Suba o servidor web novamente

```
$ sudo systemctl start apache2
or
$ sudo systemctl start nginx
```

