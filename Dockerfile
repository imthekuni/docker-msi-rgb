# FROM jlesage/baseimage:alpine-3.6
FROM phusion/baseimage

# RUN apk add --no-cache curl git rust cargo make
RUN apt-get update
RUN apt-get install curl git
RUN curl https://sh.rustup.rs -sSf | sh

RUN git clone https://github.com/nagisa/msi-rgb && cd msi-rgb && cargo build --release

# COPY rootfs/ /

# ENTRYPOINT ["/bin/bash"]
