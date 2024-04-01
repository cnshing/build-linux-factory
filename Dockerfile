FROM debian:bookworm-slim

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
        sudo \ # Internal implementation of linux-factory assumes sudo exists
    && pip3 install poetry --break-system-packages

RUN virtualenv env