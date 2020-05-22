FROM gitpod/workspace-full

USER root

# Install tor
COPY gitpod/torrc /var/tmp/torrc
RUN true "sdhah" \
	&& apt-get update \
	&& apt-get install -y tor \
	&& mv /var/tmp/torrc /etc/tor/torrc \
	&& usermod -a -G debian-tor gitpod \
	&& chmod g+rwx /var/lib/tor