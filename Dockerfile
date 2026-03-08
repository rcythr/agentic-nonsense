FROM node:22

RUN apt-get update && apt-get install -y \
    git \
    curl \
    ripgrep \
    fd-find \
    build-essential \
    vim \
    cmake

RUN npm install -g @mariozechner/pi-coding-agent

RUN ln -s $(which fdfind) /usr/local/bin/fd 


USER node 
WORKDIR /workspace
