FROM ubuntu:21.04
MAINTAINER wykim <wykim@ub1st.co.kr>

# Install Nginx.
RUN apt-get update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y vim nginx php8.0-fpm php8.0-dom php8.0-mbstring python3-pip
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["service php8.0-fpm start"]
CMD ["nginx"]

# Expose ports.
EXPOSE 80
