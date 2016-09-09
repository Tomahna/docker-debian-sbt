#
# Debian + OpenJDK8 + SBT
#
FROM debian:jessie
MAINTAINER Kévin Rauscher <kevin.rauscher@tomahna.fr>

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list.d/backports.list && \
	apt-get update -y && \
	apt-get install -y --no-install-recommends openjdk-8-jdk && \
	apt-get clean -y && \
	rm -rf /var/lib/apt/lists/*
	