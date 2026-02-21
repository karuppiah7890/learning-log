```bash
#!/bin/bash

sudo apt update

sudo apt install -y postgresql-common

sudo /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh -y

cat /etc/apt/sources.list.d/pgdg.sources

sudo apt install -y postgresql-18

sudo systemctl enable postgresql

sudo systemctl start postgresql

ps aux | grep postgres

systemctl status postgresql

sudo -u postgres psql -c "select 1"
```

PostgreSQL 18.x.y Playground with Ubuntu 24.04 OS

PostgreSQL 18.x.y
