FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y apache2
ADD . /var/www/html/
EXPOSE 82
ENTRYPOINT apachectl -D FOREGROUND
