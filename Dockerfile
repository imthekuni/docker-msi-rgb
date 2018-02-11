FROM gliderlabs/alpine

RUN curl https://sh.rustup.rs -sSf | sh
RUN git clone https://github.com/nagisa/msi-rgb
RUN cd msi-rgb
RUN cargo build --release
