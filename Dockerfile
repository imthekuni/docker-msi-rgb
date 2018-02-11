FROM gliderlabs/alpine

RUN curl https://sh.rustup.rs -sSf | sh -y && \
    git clone https://github.com/nagisa/msi-rgb && \
    cd msi-rgb && \
    cargo build --release
