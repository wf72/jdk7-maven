FROM maven:3-jdk-7-alpine

RUN apk add --no-cache git
RUN apk add --no-cache unzip
RUN apk add --no-cache zip
#change timezone on Moskow
ENV TZ=Europe/Moscow
RUN apk add --no-cache tzdata && cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && apk del tzdata
