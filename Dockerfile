FROM debian:11-slim
LABEL maintainer="Paolo Velati"

ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies.
RUN apt-get update \
    && apt-get -y install apt-utils curl git gpg jq reprepro wget \ 
    && rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

CMD ["/bin/bash"]
