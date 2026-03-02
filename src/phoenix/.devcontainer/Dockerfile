FROM elixir:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git curl wget inotify-tools \
    build-essential sudo \
    && rm -rf /var/lib/apt/lists/*

ARG USERNAME=vscode
RUN useradd -m -s /bin/bash -G sudo $USERNAME \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mix local.hex --force && mix local.rebar --force

USER $USERNAME
