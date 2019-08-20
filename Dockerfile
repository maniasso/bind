FROM alpine:latest

RUN apk add --no-cache bind

RUN mkdir /bind && chown named:named /bind

#COPY named* /etc/bind/

EXPOSE 53/tcp 53/udp

VOLUME ["/bind"]

#CMD ["/usr/sbin/named", "-f", "-g"]
CMD ["chown", "named:named", "/bind"]
CMD ["named", "-c", "/bind/named.conf", "-g", "-u", "named"]
