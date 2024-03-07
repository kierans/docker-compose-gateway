FROM node:20-bullseye-slim

# Test env var
#ENV MY_ENV_VAR="dockerfile"

RUN apt-get update && \
  apt-get -y install \
  # Taken from https://github.com/JetBrains/devcontainers-examples/blob/debug/.devcontainer/0_1-minimal_alpine/devcontainer.json \
  # and made Debian friendly.
  unzip curl libxext6 libxrender1 libxtst6 libxi6 libfreetype6 procps \
  git \
  sudo

WORKDIR /app

CMD [ "tail", "-f", "/dev/null" ]
