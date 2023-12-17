FROM ubuntu:latest

RUN apt-get update
RUN apt-get install

ADD ["etc/", "/etc/"]
ADD ["opt/". "/opt/"]

RUN crontab /etc/cron.d/generador

ENTRYPOINT ["cron", "-f"]
