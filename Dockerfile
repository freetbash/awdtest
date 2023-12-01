FROM ubuntu:16.04

RUN sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
RUN echo 'mysql-server mysql-server/root_password password 123456' | debconf-set-selections
RUN echo 'mysql-server mysql-server/root_password_again password 123456' | debconf-set-selections


RUN apt-get update -y && apt-get install -y openssh-server openssl apache2 libapache2-mod-php mysql-server mysql-client php-mysql vim gcc
RUN mkdir -p /var/run/sshd
RUN useradd -m -p $(openssl passwd -1 ctf) ctf
RUN rm /var/www/html/index.html

COPY html /var/www/html
COPY run.sh /root
COPY start.py /root

ENTRYPOINT ["bash", "/root/run.sh"]
