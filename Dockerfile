FROM alpine:edge

RUN apk update && apk add pdns && apk add pdns-backend-mysql

RUN mkdir -p /var/run/pdns && mkdir -p /etc/pdns

EXPOSE 53/udp 53/tcp

CMD ["/usr/sbin/pdns_server","--config-dir=/etc/pdns"]
