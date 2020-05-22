FROM gitpod/workspace-full

USER root

# Install tor
COPY gitpod/torrc /var/tmp/torrc
RUN true "" \
	&& apt-get update \
	&& apt-get install -y tor \
	&& mv /var/tmp/torrc /etc/tor/torrc \
	&& service tor start