FROM ubuntu:19.04

RUN apt-get update && apt-get install -y --no-install-recommends --no-install-suggests \
    prometheus-node-exporter

RUN mkdir -p /node/proc && mkdir -p /node/sys && mkdir -p /node/root

EXPOSE 9100
CMD ["prometheus-node-exporter", "--path.procfs=/node/proc", "--path.sysfs=/node/sys", "--path.rootfs=/node/root"]

