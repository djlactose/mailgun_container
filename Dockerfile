FROM alpine

EXPOSE 25

ENV User username
ENV Pass password
ENV Domain example.com

COPY main.cf /etc/postfix/main.cf
COPY run.sh /root/run.sh

RUN apk add postfix

ENTRYPOINT /root/run.sh