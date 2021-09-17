FROM exoplatform/ubuntu-jdk7

RUN apt-get update && apt-get -yf install maven git openjdk-7-jdk
ENV TZ=Europe/Moscow
RUN apt-get install -y tzdata && cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone 
