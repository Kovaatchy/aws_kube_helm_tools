FROM debian:11.7-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
  apt upgrade -y && \
  apt install -y --no-install-recommends curl git gnupg2 python python3-pip vim wget unzip && \
  echo "deb http://apt.postgresql.org/pub/repos/apt bullseye-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
  apt -y update && apt install -y --no-install-recommends postgresql-client-14 && \
  rm -rf /var/lib/apt/lists/*

#awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip &&\
    ./aws/install -i /usr/local/aws-cli -b /usr/local/bin

#kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    kubectl version --client

#helm
RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

