FROM gitpod/workspace-full

USER root

# Install tor
RUN true "" \
	&& apt-get update \
	&& apt-get install -y tor \
  && usermod -a -G debian-tor gitpod