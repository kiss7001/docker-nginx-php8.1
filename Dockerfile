FROM ubuntu:21.04
MAINTAINER wykim <wykim@ub1st.co.kr>

# Install Nginx.
RUN apt-get update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y vim nginx php8.1-fpm php8.1-dom php8.1-mbstring python3-pip
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["service php8.1-fpm start nginx"]

# Expose ports.
EXPOSE 80
