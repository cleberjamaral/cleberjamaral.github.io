---
description: gradle notes
---

# gradle

### Cleaning gradle logs

* Gradle by default generate lots of logs. Checking disk usage by daemon and specially their logs: `$ du -h --max-depth=1 ~/.gradle/daemon`
* To free disk usage:`$ find ~/.gradle/daemon -name *.log -delete`



