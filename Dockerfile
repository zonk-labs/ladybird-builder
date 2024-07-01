FROM ubuntu:latest

# Install necessary dependencies, git, sudo
RUN apt-get update && apt-get install -y \
       autoconf \
       autoconf-archive \
       automake \
       build-essential \
       cmake \
       libavcodec-dev \
       libgl1-mesa-dev \
       ninja-build \
       qt6-base-dev \
       qt6-tools-dev-tools \
       qt6-multimedia-dev \
       ccache fonts-liberation2 \
       zip \
       unzip \
       curl \
       tar \
       libpulse0 \
       pulseaudio-utils \
       git \
       sudo 

RUN usermod -aG sudo ubuntu
RUN echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

WORKDIR /home/ubuntu

# Switch to the non-root user
USER ubuntu

ENV QT_QPA_PLATFORM=wayland
ENV XDG_RUNTIME_DIR=/tmp
ENV DISPLAY :0

# Set the entry point
ENTRYPOINT ["/bin/bash"]
