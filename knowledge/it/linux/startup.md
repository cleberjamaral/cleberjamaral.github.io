---
description: linux startup
---

# startup

### Adding commands at startup

In Debian GNU/Linux 9.12 \(stretch\) with [xfce](https://www.xfce.org/) I have tried several ways to add a script after login and unlocking screen and none of them has worked. It seems adding a `.desktop` file on `~/.config/autostart/` should work. But even doing that by xfce "Session and startup" interface and having sure that the script is runnable is did not worked in any situation \(unlocking, login and even startup\). What really works is by `/etc/init.d/` that I did as follows:

### Write a script placing it at /etc/init.d/

```text
#! /bin/sh
# /etc/init.d/myautostart

### BEGIN INIT INFO
# Provides:          myautostart
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: My autostart actions
# Description:       My autostart actions
### END INIT INFO

case "$1" in
  start)
    echo "Starting myautostart..."
    # execute a script in my home folder
    /home/myuser/myscript.sh
    ;;
  stop)
    echo "Stopping myautostart..."
    # do something
    ;;
  *)
    echo "Usage: /etc/init.d/myautostart {start|stop}"
    exit 1
    ;;
esac

exit 0
```

### Make it executable

```text
$ sudo chmod +x /etc/init.d/myautostart
```

### Test it on start and on stop

```text
$ sudo /etc/init.d/myautostart start
$ sudo /etc/init.d/myautostart stop
```

### Add the script on startup

```text
$ sudo update-rc.d myautostart defaults
```

To remove it from startup just run `$ sudo update-rc.d -f myautostart remove`

Source: [stuffaboutcode.com](https://www.stuffaboutcode.com/2012/06/raspberry-pi-run-program-at-start-up.html)

