FROM jlesage/baseimage:alpine-3.6

RUN apk add --no-cache curl
RUN apk add --no-cache git
RUN apk add --no-cache rust cargo
RUN apk add --no-cache make
RUN apk add --no-cache bash bash-doc bash-completion
# RUN git clone https://github.com/nagisa/msi-rgb && cd msi-rgb && cargo build --release

# COPY rootfs/ /

ENTRYPOINT ["/bin/bash"]
