```bash
sudo apt update

sudo apt install -y gdb apache2-utils graphviz linux-tools-common linux-tools-$(uname -r) strace ltrace tcpdump tcptrace tshark wireshark
```

Explore the following CLI tools: `ab`, `gdb`, `strace`, `ltrace`, `tcpdump`, `perf`, `wireshark`, `tshark`, `termshark`, `tcpreplay`, `tcptrace`, `tcpslice`, `nstreams`

Explore the following system calls: `ptrace`

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

g clone https://github.com/karuppiah7890/c-experiments

cd c-experiments
```

```bash

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
cat /proc/sys/fs/file-max

ulimit

ulimit -a

ulimit -n

# Soft Limit
ulimit -Sn

# Hard Limit
ulimit -Hn

sudo su
```

```bash
URL="http://box-01:8080/"
# URL="http://box-01:8080/livez"

time ab -n 10 -c 10 $URL

time ab -n 100 -c 10 $URL

time ab -n 1000 -c 10 $URL

time ab -n 10000 -c 10 $URL

time ab -n 100000 -c 10 $URL

time ab -n 100000 -c 100 $URL

time ab -n 100000 -c 1000 $URL

time ab -n 100000 -c 10000 $URL

time ab -n 1000000 -c 1000 $URL

time ab -n 1000000 -c 10000 $URL

time ab -n 1000000 -c 20000 $URL
```

```bash
curl -o profile.out http://localhost:6060/debug/pprof/profile?seconds=50

go tool pprof -no_browser -http 0.0.0.0:6061 profile.out
```

For `perf` tool in Linux -

For Ubuntu/Debian:

```bash
cd /tmp

# For Ubuntu/Debian:
sudo apt install build-essential flex bison libelf-dev libtraceevent-dev libaudit-dev libslang2-dev libperl-dev binutils-dev libdw-dev

# Download the kernel source. For example -
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.167.tar.xz

# uncompress the compressed file. For example -
tar -xf linux-6.1.167.tar.xz

# go inside the `perf` directory in the `tools` directory
cd linux-6.1.167/tools/perf

# check if `nproc` works
nproc

make -j$(nproc)

sudo make install

# check perf version
./perf version
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

https://gist.github.com/denji/8333630

hey (alternative to ab)

ab - Apache Benchmark

Bombardier

h2load

plow

Apache JMeter

k6

Locust

Gatling

Artillery

Vegeta

Siege

Wrk

----------

In Golang, check and try some things around the following
- `CGO_ENABLED=0` vs `CGO_ENABLED=1`
- Number of CPU Cores the program is using
- Performance Profiling
- If all CPU Cores are used equally or if just one or a few are overloaded
    - Load balancing across CPU Cores
- How many golang routines are running
- How many OS threads are running
- How many golang routines are tied to or assigned to each of the OS threads
- CPU bound processing and it's speed
- IO bound processing and it's speed
- Custom HTTP server
    - Custom Implementation with only the basics
        - Remove TLS stuff
        - Remove any mux stuff
        - Remove a lot of stuff that won't be required for a HTTP server just serving 200 OK

----------

For Golang:

https://go.dev/doc/diagnostics

https://go.dev/src/net/http/pprof/pprof.go

Try Profiling - CPU and Memory

https://github.com/golang/go/issues/74544

https://eng.d2iq.com/blog/etcd-performance-benchmarking/

https://perfwiki.github.io/main/

----------

For any HTTP server, understand how to find out throughput - requests per second - from client side and server side. Find out response times and check P90, P95, P99, and P100

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
