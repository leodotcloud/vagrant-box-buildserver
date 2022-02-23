#!/usr/bin/env bash

# Install additional packages
sudo apt-get install -y \
pip \
unzip \
clang \
build-essential \
libhugetlbfs-dev \
libsqlite3-dev \
libssl-dev \
openjdk-11-jdk

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

wget https://services.gradle.org/distributions/gradle-7.3.1-bin.zip -P /tmp && \
    unzip -j /tmp/gradle-7.3.1-bin.zip gradle-7.3.1/bin/gradle -d /usr/bin && \
    rm /tmp/gradle-7.3.1-bin.zip