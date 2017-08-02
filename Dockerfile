FROM eeacms/varnish:latest

RUN curl -LOk https://github.com/jonnenauha/prometheus_varnish_exporter/releases/download/1.3.1/prometheus_varnish_exporter-1.3.1.linux-amd64.tar.gz && tar xfv prometheus_varnish_exporter-1.3.1.linux-amd64.tar.gz && mv prometheus_varnish_exporter-1.3.1.linux-amd64/prometheus_varnish_exporter /usr/bin/ && rm -rf prometheus_varnish_exporter-1.3.1.linux-amd64 prometheus_varnish_exporter-1.3.1.linux-amd64.tar.gzrm

EXPOSE  6081 9131

CMD ["/usr/local/bin/chaperone", "--user", "varnish", "prometheus_varnish_exporter" ]
