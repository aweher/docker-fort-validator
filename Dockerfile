FROM debian:buster
LABEL Author="Ariel S. Weher"
LABEL Release="20200714"
WORKDIR /opt/fort
RUN mkdir -p /opt/fort/tals && apt update && apt install -y rsync wget curl && \ 
    wget https://github.com/NICMx/FORT-validator/releases/download/v1.3.0/fort_1.3.0-1_amd64.deb && \
    apt install -y ./fort_1.3.0-1_amd64.deb

COPY fort-config.json /opt/fort/
COPY *.tal /opt/fort/tals/

ENTRYPOINT [ "/usr/bin/fort", "-f", "/opt/fort/fort-config.json" ]

EXPOSE 7754