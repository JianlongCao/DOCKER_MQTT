#####################################
# Docker file to build an MQTT Broker
#####################################

FROM 32bit/ubuntu:14.04

MAINTAINER JL CAO<caojianlong@outlook.com>

RUN apt-get update && \
	apt-get install -y \
		mosquitto \
		mosquitto-clients 
RUN apt-get clean

EXPOSE 1883

ENTRYPOINT ["/usr/sbin/mosquitto"]
