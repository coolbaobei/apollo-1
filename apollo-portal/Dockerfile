# Dockerfile for apollo-configservice
# Build with:
# docker build -t apollo-configservice .
# Run with:
# docker run --net=host -d -v /Users/guagua/Desktop/logs:/opt/logs/100003171  -e "DATASOURCE_URL=jdbc:mysql://127.0.0.1:3306/ApolloConfigDB?characterEncoding=utf-8" --name apollo-configservice apollo-configservice:0.10.2

FROM openjdk:8-jre-alpine
MAINTAINER ywb <wanbao.yang@changhong.com>

ENV VERSION 0.10.3

RUN echo "http://mirrors.aliyun.com/alpine/v3.6/main" > /etc/apk/repositories \
    && echo "http://mirrors.aliyun.com/alpine/v3.6/community" >> /etc/apk/repositories \
    && apk update upgrade \
    && apk add --no-cache procps unzip curl bash tzdata \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

WORKDIR "/apollo-portal"

ADD target/apollo-portal-${VERSION}-github.zip /apollo-portal/apollo-portal-${VERSION}-github.zip
ADD entrypoint.sh ./entrypoint.sh

RUN unzip /apollo-portal/apollo-portal-${VERSION}-github.zip -d /apollo-portal \
    && rm -rf /apollo-portal/apollo-portal-${VERSION}-github.zip

RUN cd /apollo-portal/ && chmod u+x ./entrypoint.sh


EXPOSE 8080

ENTRYPOINT ["sh","./entrypoint.sh"]
