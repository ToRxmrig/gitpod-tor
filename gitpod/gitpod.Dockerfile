FROM gitpod/workspace-full

USER root

# Install tor
COPY gitpod/torrc /var/tmp/torrc
RUN true "dgasdga" \
	&& apt-get update \
	&& apt-get install -y tor \
	&& mv /var/tmp/torrc /etc/tor/torrc \
	&& usermod -a -G debian-tor gitpod \
    && chown -R gitpod:gitpod /var/lib/tor \
	&& chmod g+rwx /var/lib/tor