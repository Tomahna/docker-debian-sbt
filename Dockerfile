#
# Debian + OpenJDK8 + SBT
#
FROM debian:jessie
MAINTAINER Kévin Rauscher <kevin.rauscher@tomahna.fr>

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list.d/backports.list && \
	echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823 && \
	apt-get update -y && \
	apt-get install -y --no-install-recommends openjdk-8-jdk && \
	apt-get install -y --no-install-recommends sbt && \
	sbt exit && \
	apt-get clean -y && \
	rm -rf /var/lib/apt/lists/*
	