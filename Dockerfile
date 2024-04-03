FROM debian:bookworm-slim
# Implements the required dependencies from the following code:
# https://github.com/clayrisser/linux-factory/blob/main/.gitlab-ci.yml
# Internal implementation of linux-factory assumes sudo exists
RUN apt-get update \
    && apt-get install  -y \
        imagemagick \ 
        make \
        git \
        git-lfs \
        grub-emu \ 
        live-build \
        python3 \ 
        python3-pip \
        jq \
        virtualenv \ 
        yq \
        sudo \
    && pip3 install poetry --break-system-packages