---
description: gradle notes
---

# gradle

### Cleaning gradle logs

* Gradle by default generate lots of logs. Checking disk usage by daemon and specially their logs: `$ du -h --max-depth=1 ~/.gradle/daemon`
* To free disk usage:`$ find ~/.gradle/daemon -name *.log -delete`

### Cleaning gradle cache

* Some cache can be old and unnecessary, in an extreme mode all cached data can be removed:`$ rm -rf $HOME/.gradle/caches/`
* Removing files not accessed for more than 30 days and the empty folders after that: `$ find ~/.gradle/caches -type f -atime +30 -delete $ find ~/.gradle -type d -mindepth 1 -empty -delete`

