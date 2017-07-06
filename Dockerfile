FROM        quay.io/prometheus/busybox:latest
MAINTAINER  The Prometheus Authors <prometheus-developers@googlegroups.com>

COPY snmp_exporter  /bin/snmp_exporter

EXPOSE      9116
CMD         [ "sh", "-c", "/bin/snmp_exporter -config.file=${CONFIG_DIR}/snmp_exporter/${DOMAIN}.yml" ]
