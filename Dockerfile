#
# Debian + OpenJDK8 + SBT + RubyGem for packagecloud.io deployment
#
FROM debian:jessie
MAINTAINER Kévin Rauscher <kevin.rauscher@tomahna.fr>

RUN apt-get update -y && \
	apt-get install -y --no-install-recommends openjdk-8-jdk && \
	apt-get clean -y && \
	rm -rf /var/lib/apt/lists/*
	