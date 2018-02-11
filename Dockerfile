FROM alpine:3.7

RUN apk add --no-cache curl
RUN apk add --no-cache git

RUN curl https://sh.rustup.rs -sSf | sh -y
RUN git clone https://github.com/nagisa/msi-rgb
RUN cd msi-rgb
RUN cargo build --release
