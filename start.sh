docker run  -itd --name DNS --net=dns --ip 10.0.0.8 -p 53:53 -p 53:53/udp -v /root/docker/bind/conf:/bind -v  /root/docker/bind/conf/resolv.conf:/etc/resolv.conf maniasso/bind
