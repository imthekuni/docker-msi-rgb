FROM gliderlabs/alpine

ADD sudo apt-get update && apt-get install curl -y
ADD sudo apt-get install curl
ADD sudo apt-get install git

RUN curl https://sh.rustup.rs -sSf | sh
RUN git clone https://github.com/nagisa/msi-rgb
RUN cd msi-rgb
RUN cargo build --release
