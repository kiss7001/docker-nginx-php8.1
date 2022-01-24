FROM ubuntu:21.04
MAINTAINER wykim <wykim@ub1st.co.kr>

# Install Nginx.
RUN apt-get update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y vim

# Expose ports.
EXPOSE 80
