#!/usr/bin/env bash

# Install additional packages
sudo apt-get install -y \
pip \
unzip \
jq \
clang \
build-essential \
libhugetlbfs-dev \
libsqlite3-dev \
libssl-dev \
lldb \
net-tools \
pkg-config \
libcurl4-openssl-dev \
libssl-dev \
uuid-dev \
zlib1g-dev \
libpulse-dev \
cmake \
openjdk-11-jdk

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

wget https://services.gradle.org/distributions/gradle-7.3.1-bin.zip -P /tmp && \
    unzip /tmp/gradle-7.3.1-bin.zip -d /usr/local/bin && \
    ln -sv /usr/local/bin/gradle-7.3.1/bin/gradle /usr/bin && \
    rm /tmp/gradle-7.3.1-bin.zip
