FROM summerwind/actions-runner:latest

LABEL maintainer="vidurbutalia@gmail.com"

RUN sudo apt update -y \
  && sudo apt install curl wget \
  && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add - \
  && echo "deb https://deb.nodesource.com/node_14.x focal main" | sudo tee /etc/apt/sources.list.d/nodesource.list \
  && echo "deb-src https://deb.nodesource.com/node_14.x focal main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
  && sudo apt update \
  && sudo apt install -y python3 python3-dev nodejs \
  && sudo rm -rf /var/lib/apt/lists/*
