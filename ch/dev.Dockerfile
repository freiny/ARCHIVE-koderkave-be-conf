FROM alpine:3.4

RUN apk add --update redis

EXPOSE 6379

RUN mkdir /data
ADD home/init /home/init
ADD home/redis.conf /etc/redis.conf

WORKDIR /data

CMD ["sh", "-c", "source /home/init dev"]
