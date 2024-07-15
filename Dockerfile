# Pull base image.
FROM ubuntu:22.04

# RUN apt-get update \
#     && apt-get install -y sudo

RUN apt -y update && apt install bash sudo -y
RUN apt-get -y install --no-install-recommends \
    cmake \
    ninja-build \
    libstdc++6 \
    libboost-graph-dev \
    libboost-all-dev
    
RUN apt-get update && \
    apt-get install -y software-properties-common
RUN apt-key adv --fetch-keys https://apt.llvm.org/llvm-snapshot.gpg.key && \
           add-apt-repository -y 'deb http://apt.llvm.org/focal/ llvm-toolchain-focal-14 main' && \
           apt-get update && \
           apt-get -y install --no-install-recommends \
              clang-14 \
              llvm-14-dev \
              libllvm14 \
              libclang-common-14-dev \
              libclang-14-dev \
              libclang-cpp14-dev \
              clang-tidy-14 \
              libclang-rt-14-dev
              
RUN apt-get install git -y
RUN apt-get install zlib1g-dev sqlite3 libsqlite3-dev \
    python3 doxygen python3-pip g++ ninja-build cmake -y
RUN pip3 install Pygments pyyaml

# installing wllvm
RUN pip3 install wllvm

RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker

ENV CC=/usr/bin/clang-14
ENV CXX=/usr/bin/clang++-14

# COPY install.sh .
# RUN bash ./install.sh

USER root
WORKDIR /neck-identification
# COPY build-llvm.sh .
# RUN bash /neck-identification/build-llvm.sh
COPY . .
# RUN bash /neck-identification/build.sh
