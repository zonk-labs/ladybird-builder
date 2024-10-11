FROM ubuntu:latest

# Install necessary dependencies, git, sudo
RUN apt update -y && apt install -y --no-install-recommends \
    autoconf \
    autoconf-archive \
    automake \
    build-essential \
    g++-13 \
    libstdc++-13-dev \
    ccache \
    cmake \
    curl \
    fonts-liberation2 \
    git \
    libavcodec-dev \
    libavformat-dev \
    libavutil-dev \
    libgl1-mesa-dev \
    nasm \
    ninja-build \
    pkg-config \
    qt6-base-dev \
    qt6-tools-dev-tools \
    qt6-wayland \
    qt6-multimedia-dev \
    libpulse-dev \
    tar \
    unzip \
    zip \
    ca-certificates \
    sudo && \
\
    rm -rf /var/cache/* /var/lib/apt/lists/* && \
    update-ca-certificates

RUN echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN usermod -aG sudo,audio ubuntu

WORKDIR /home/ubuntu
USER ubuntu

ENV QT_QPA_PLATFORM=wayland XDG_RUNTIME_DIR=/tmp DISPLAY=:0

# Set the entry point
ENTRYPOINT ["/bin/bash"]
