---
description: gradle notes
---

# gradle

### Cleaning gradle logs

* Gradle by default generate lots of logs. Checking disk usage by daemon and specially their logs: `$ du -h --max-depth=1 ~/.gradle/daemon`
* To free disk usage:`$ find ~/.gradle/daemon -name *.log -delete`

### Cleaning gradle cache

* Some cache can be old and unnecessary, in an extreme mode all cached data can be removed:`$ rm -rf $HOME/.gradle/caches/`
* Removing files not accessed for more than 30 days and the empty folders after that: `$ find ~/.gradle/caches -type f -atime +30 -delete`\
  `$ find ~/.gradle -type d -mindepth 1 -empty -delete`

### Do not execute a subtask

* For instance, do not execute test when performing build`$ ./gradlew build -x test`

### Force use of a local library (usually a snapshot)

Let us say the dependency `'org.jacamo:jacamo-rest:0.5-SNAPSHOT'` was just compiled locally and it is necessary to use it in some project. Two steps needed:

1. Copy the local .jar file to some folder of the project (e.g. lib/)
2. Add a local dependency besides the existing one, gradle will prefer to use the local one, eg:

```
compile org.jacamo:jacamo-rest:0.5-SNAPSHOT'
compile files('lib/jacamo-rest-0.5-SNAPSHOT.jar')
```
