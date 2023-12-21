FROM ubuntu:latest
MAINTAINER lorenzo, franco, sharo

RUN apt-get update
RUN apt-get install -y cron
RUN apt install vim -y 
RUN apt install file -y 
RUN apt install ffmpeg -y --fix-missing
RUN apt install imagemagick-6.q16 -y

ADD ["./generador", "/script/generador"]
ADD ["etc/cron.d/generator", "/etc/cron.d/generator"]
ADD ["opt/src/cron-generador.sh", "/opt/src/cron-generador.sh"]

RUN crontab /etc/cron.d/generator
ENTRYPOINT ["cron", "-f"]
