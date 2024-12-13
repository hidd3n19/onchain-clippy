FROM ubuntu:25.04

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# Download and extract Helios
RUN curl -L "https://github.com/a16z/helios/releases/download/0.7.0/helios_linux_amd64.tar.gz" \
    | tar -xzC /usr/local/bin

EXPOSE 8545
EXPOSE 80

CMD ["/usr/local/bin/helios", "ethereum", "--execution-rpc", "https://eth-mainnet.g.alchemy.com/v2/a--NIcyeycPntQX42kunxUIVkg6_ekYc"]
