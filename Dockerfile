FROM ubuntu:16.04

RUN apt-get update && \ 
    apt-get upgrade -y && \
    apt-get install -y wget && \
    apt-get -y install software-properties-common

RUN apt-get update && \
    add-apt-repository -y ppa:openjdk-r/ppa && \
    apt-get -y update && \
    apt-get -y install openjdk-8-jdk

RUN apt-get -y install openjdk-7-jdk

RUN update-java-alternatives -s java-1.7.0-openjdk-amd64

RUN apt-get -y install maven && \
	apt-get -y install git 

RUN apt-get -y install curl && \
	curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get -y install nodejs && \
	ln -s "$(which nodejs)" /usr/local/bin/node

CMD ["bash"]
