FROM debian:stretch-slim

RUN apt update && apt install curl python3-pip python-all python3-all-dev -y && \
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --profile minimal --default-toolchain nightly -y && \
pip3 install setuptools-rust

ENV PATH="/root/.cargo/bin:${PATH}"

COPY entrypoint.sh /entrypoint.sh

RUN chmod u+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
