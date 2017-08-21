FROM tomcat:8-jre8

WORKDIR /usr/local

RUN mkdir data
RUN mkdir bakdata
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone

ENV BAK_DIR /usr/local/bakdata
ENV BASE_DIR /usr/local/data

CMD ["catalina.sh", "run"]