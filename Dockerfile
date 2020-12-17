FROM java:8-alpine

MAINTAINER Gavin Wu

ADD apache-ant-1.9.15-bin.tar.gz /usr/local/

COPY quake2-gwt-port /quake2-gwt-port/

ENV ANT_HOME /usr/local/apache-ant-1.9.15
ENV PATH ${PATH}:${ANT_HOME}/bin

WORKDIR /quake2-gwt-port

EXPOSE 8080

CMD ant run
