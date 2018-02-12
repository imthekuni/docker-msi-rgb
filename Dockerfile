FROM jlesage/baseimage-gui:alpine-3.6-v3.3.2

RUN apk add --no-cache curl
RUN apk add --no-cache git
RUN apk add --no-cache rust cargo
RUN apk add --no-cache make
# RUN git clone https://github.com/nagisa/msi-rgb && cd msi-rgb && cargo build --release
