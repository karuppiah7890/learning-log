```bash
sudo apt update
sudo apt install -y postgresql-common
sudo /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh -y
sudo apt update

ls /etc/apt/sources.list.d/pgdg.sources
cat /etc/apt/sources.list.d/pgdg.sources

# Change Components to `19` or add `19` along with `main`
vi /etc/apt/sources.list.d/pgdg.sources

sudo apt install postgresql-19
```

Example contents for `/etc/apt/sources.list.d/pgdg.sources` should be -

```
Types: deb
URIs: https://apt.postgresql.org/pub/repos/apt
Suites: resolute-pgdg
Components: main 19
Architectures: amd64
Signed-By: /usr/share/postgresql-common/pgdg/apt.postgresql.org.gpg
```

https://wiki.postgresql.org/wiki/Apt

https://wiki.postgresql.org/wiki/Apt/FAQ#Development_snapshots
