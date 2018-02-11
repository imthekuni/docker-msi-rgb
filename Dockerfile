FROM alpine:3.7

ADD apk add --no-cache curl
ADD apk add --no-cache git

RUN curl https://sh.rustup.rs -sSf | sh
RUN git clone https://github.com/nagisa/msi-rgb
RUN cd msi-rgb
RUN cargo build --release
