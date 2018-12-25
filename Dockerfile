FROM nginx:1.15.7

RUN apt update && apt install -y wget curl git procps iproute tcpdump net-tools nano vim crontabs \
 bind-utils lsof zip unzip sysstat iotop telnet iproute python python-pip
 
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - 
RUN apt-get install -y nodejs

RUN echo -e "deb http://mirrors.163.com/debian/  stretch main non-free contrib \n\
deb http://mirrors.163.com/debian/  stretch-updates main non-free contrib \n\
deb http://mirrors.163.com/debian/  stretch-backports main non-free contrib \n\
deb-src http://mirrors.163.com/debian/  stretch main non-free contrib \n\
deb-src http://mirrors.163.com/debian/  stretch-updates main non-free contrib \n\
deb-src http://mirrors.163.com/debian/  stretch-backports main non-free contrib \n\
deb http://mirrors.163.com/debian-security/  stretch/updates main non-free contrib \n\
deb-src http://mirrors.163.com/debian-security/  stretch/updates main non-free contrib" > /etc/apt/sources.list
RUN apt-get update
 
# COPY dist /usr/share/nginx/html
