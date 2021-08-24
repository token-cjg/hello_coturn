### Before you start...

... you will need a VM and sort out Cloudflare routing etc.

See instructions [here](docs/prerequisities.md).

### Quickstart

1. `curl -O -L https://raw.githubusercontent.com/token-cjg/hello_coturn/master/bootstrap.sh`
1. `chmod +x bootstrap.sh`
1. `./bootstrap.sh $ADMIN_USER $ADMIN_PASSWORD $SERVER`
1. visit your.server.com # eg https://groklemins.tk

### Gotchas

* Make sure that your domain is resolving first, otherwise certbot will complain!
* Make sure port 80 is open on your machine, otherwise again certbot won't work
* Make sure ports 3478, 5349 are open on your machine, otherwise TURN won't work.
* `sudo certbot certonly --standalone -d groklemins.tk`

### How to view stored data (only useful for TURN & not properly supported yet)

1. `ssh root@<ip_of_vm>`
1. cd /var/lib/turn
1. sqlite3 turndb
1. .tables
1. select * from <tablename>;
1. .quit

### How to view logs

1. cat /var/log/syslog | grep turnserver
1. <tbd>
