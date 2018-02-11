FROM alpine:3.7

RUN apk add --no-cache curl
RUN apk add --no-cache git
RUN apk add --no-cache rust cargo
RUN git clone https://github.com/nagisa/msi-rgb && cd msi-rgb && cargo build --release
