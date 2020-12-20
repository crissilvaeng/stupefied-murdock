FROM gitpod/workspace-full:latest

USER root

RUN apt-get update \
    && apt-get install erlang -y \
    && apt-get install elixir -y \
    && apt-get clean \
    && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
