```bash
sudo apt update

sudo apt install -y apache2-utils
```

```bash
sudo apt update

sudo apt install -y nginx

sudo nginx
```

```bash
cat /etc/nginx/nginx.conf
```

```
location /livez {
    return 200 "";
}
```

```bash
sudo nginx -s stop

sudo nginx -s reload
```

```bash
alias g=git

g clone https://github.com/karuppiah7890/go-experiments

cd go-experiments
```

```bash
go build -v ./cmd/simple-http-server/

./simple-http-server
```

```bash
go build -v ./cmd/no-mux-http-server/

./no-mux-http-server
```

```bash
# URL="http://box-01:8080/"
URL="http://box-01:8080/livez"

ab -n 10 -c 10 $URL

ab -n 100 -c 10 $URL

ab -n 1000 -c 10 $URL

ab -n 10000 -c 10 $URL

ab -n 100000 -c 10 $URL

ab -n 100000 -c 100 $URL

ab -n 100000 -c 1000 $URL

ab -n 1000000 -c 1000 $URL
```

----------

Check Metrics on both sides - Client (Benchmarking Tool) and Server

CPU Usage
RAM Usage
Disk Usage
Throughput
Request Rate - Requests Per Second
Response Times

----------

Do CPU and memory profiling to understand CPU and memory usage and also to see why it was slow or why it was fast. And how it was slow or fast

Try to make it faster by understanding internals :)

----------

Try
- Rust: ntex, actix-web
- Node.js: Hyper Express, Ultimate Express
- Golang: fasthttp
- Java: GreenLightning, java-http

----------

https://github.com/dimdenGD/ultimate-express

----------

Use nginx HTTP Server

Use Golang HTTP Server

Use Caddy HTTP Server

Use Kong HTTP Server

Use OpenResty HTTP Server

Use Apache httpd Server

Use Apache Tomcat Server

Use LiteSpeed / OpenLiteSpeed HTTP Server

Use Rust HTTP Server

Use C++ HTTP Server

Use Java HTTP Server

Use Zig HTTP Server
