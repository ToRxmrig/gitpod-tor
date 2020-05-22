FROM gitpod/workspace-full

USER root

# Install tor
RUN \
	&& apt-get update \
	&& apt-get install -y tor