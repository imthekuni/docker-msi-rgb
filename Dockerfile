# FROM jlesage/baseimage:alpine-3.6
FROM phusion/baseimage

# RUN apk add --no-cache curl wget git rust cargo make
RUN apt-get update && apt-get install -y gcc curl git

RUN curl https://sh.rustup.rs -sSf | \
    sh -s -- --default-toolchain stable -y

ENV PATH=/root/.cargo/bin:$PATH

#RUN mkdir /rust && cd /rust && wget https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init && /rust/rustup-init | sh -s -- -y --verbose && git clone https://github.com/nagisa/msi-rgb && cd msi-rgb && cargo build --release
#RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --verbose --no-modify-path

RUN git clone https://github.com/nagisa/msi-rgb && cd msi-rgb && cargo build --release

# ENTRYPOINT ["/bin/bash"]
