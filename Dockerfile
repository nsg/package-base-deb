FROM ubuntu:14.04
MAINTAINER Stefan Berggren <nsg@nsg.cc>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get -y upgrade \
	&& apt-get -y install \
		wget \
		curl \
		ruby-dev \
		libssl-dev \
		zlib1g-dev \
		e2fslibs-dev \
		make \
	&& apt-get clean \
	&& gem install fpm --no-ri --no-rdoc

ADD download /usr/local/bin/download

RUN mkdir /build
WORKDIR /build
