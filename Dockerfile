FROM gliderlabs/alpine

ADD apt-get update && apt-get install curl -y
ADD apt-get install curl
ADD apt-get install git

RUN curl https://sh.rustup.rs -sSf | sh
RUN git clone https://github.com/nagisa/msi-rgb
RUN cd msi-rgb
RUN cargo build --release
