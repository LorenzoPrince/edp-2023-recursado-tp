FROM ubuntu:latest

RUN apt update && apt upgrade && apt install -y file
ADD ["scripts/", "/scripts/"]

ENTRYPOINT ["/scripts/menu.sh"]

