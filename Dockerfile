FROM million12/varnish

RUN curl -LOk https://github.com/jonnenauha/prometheus_varnish_exporter/releases/download/1.3.1/prometheus_varnish_exporter-1.3.1.linux-amd64.tar.gz && tar xfv prometheus_varnish_exporter-1.3.1.linux-amd64.tar.gz && mv prometheus_varnish_exporter-1.3.1.linux-amd64/prometheus_varnish_exporter /usr/bin/ && rm -rf prometheus_varnish_exporter-1.3.1.linux-amd64 prometheus_varnish_exporter-1.3.1.linux-amd64.tar.gzrm

EXPOSE  80 9131

CMD [ "sh", "-c", "/start.sh & sleep 2 && prometheus_varnish_exporter"]
