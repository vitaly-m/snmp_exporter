FROM        quay.io/prometheus/busybox:latest
MAINTAINER  The Prometheus Authors <prometheus-developers@googlegroups.com>

COPY snmp_exporter  /bin/snmp_exporter

EXPOSE      9116
ENTRYPOINT  /bin/snmp_exporter
