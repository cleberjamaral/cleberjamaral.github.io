# mysql

### Check if the server is running&#x20;

```
# service mysql status
```

Instead of `status:` `stop`, `start` and `restart` can be used according to the need)

### Connect to server using terminal client

```
# mysql -u root -p
```

Digitar a senha escolhida para o usuário root

### List existing databases

```
mysql> SHOW databases;
```

### Create a database&#x20;

```
mysql> CREATE DATABASE database_name;
```

### Creating and granting rights to an user

```
mysql> CREATE USER "user_name"@"localhost" IDENTIFIED BY "password";

mysql> GRANT ALL PRIVILEGES ON database_name.* to "user_name"@"localhost";

mysql> FLUSH PRIVILEGES;
```

###

