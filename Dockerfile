FROM ubuntu:21.04
MAINTAINER wykim <wykim@ub1st.co.kr>

# Install Nginx.
RUN apt-get update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y vim nginx php8.1-fpm php8.1-dom php8.1-mbstring python3-pip
# RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

COPY default /etc/nginx/sites-available/
COPY info.php /var/www/html

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
#CMD ["nginx"]
# nginx를 백그라운드에서 돌아가도록 실행
#CMD ["nginx", "-g", "daemon off;"]
CMD service php8.1-fpm start && nginx -g "daemon off;"

# Expose ports.
EXPOSE 80
