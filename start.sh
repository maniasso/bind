docker run  -itd --name bind9 -p 53:53 -p 53:53/udp -v /root/docker/bind/bind:/bind  maniasso/bind
