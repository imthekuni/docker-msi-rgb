# FROM jlesage/baseimage:alpine-3.6
FROM phusion/baseimage

# RUN apk add --no-cache curl git rust cargo make
RUN apt-get update && apt-get install -y curl git

RUN mkdir /rust
ADD https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init /rust
RUN cd /rust && rustup-init | sh -s -- -y --verbose
#RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --verbose --no-modify-path && git clone https://github.com/nagisa/msi-rgb && cd msi-rgb && cargo build --release

# COPY rootfs/ /

# ENTRYPOINT ["/bin/bash"]
