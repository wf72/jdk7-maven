FROM maven:3-jdk-7-alpine

RUN apk add --no-cache git unzip zip
# fix connect to mssql 
# https://learn.microsoft.com/ru-ru/archive/blogs/dataaccesstechnologies/intermittent-jdbc-connectivity-issue-the-driver-could-not-establish-a-secure-connection-to-sql-server-by-using-secure-sockets-layer-ssl-encryption-error-sql-server-returned-an-incomplete-respons
RUN sed -i 's/EC keySize < 224, RC4_40, 3DES_EDE_CBC, anon, NULL/EC keySize < 224, RC4_40, anon, NULL/' /usr/lib/jvm/java-1.7-openjdk/jre/lib/security/java.security
#change timezone on Moskow
ENV TZ=Europe/Moscow
RUN apk add --no-cache tzdata && cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
