FROM nginx:1.15.7

RUN apt update && apt install -y wget curl git procps iproute tcpdump net-tools \
 nano vim lsof zip unzip iotop telnet python python-pip
 
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get install -y nodejs

ADD mirror.list /etc/apt/sources.list
RUN apt update
 
# COPY dist /usr/share/nginx/html
