FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://releases.hashicorp.com/terraform/1.7.4/terraform_1.7.4_linux_amd64.zip && \
    unzip terraform_1.7.4_linux_amd64.zip -d /usr/local/bin/ && \
    rm terraform_1.7.4_linux_amd64.zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN terraform --version
WORKDIR /home/terraform
