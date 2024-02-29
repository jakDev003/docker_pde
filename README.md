# docker_pde
Dockerize Personal Development Environment

## Description
Have you ever needed to work on multiple machines and you want NeoVim (the best editor in the world!) available to you with all your configs installed the way you want? Doesn't it get tiring to make sure all your dependencies are installed and configured properly each time?
I know for me I want Neovim on my work laptop, which is Windows 10. Then I want Neovim on my personal laptop, which is Linux and Windows 10 (dual boot). Then I want Neovim on my server.....the list goes on and on......
One day I thought...... HEY! Why not set it up in Docker so I can have a consistent experience everywhere! That is where 'docker_pde' comes in! Now you too can have your own custom PDE (Personal Development Environment). Just install docker and pull in the git repo!

### Watch the first start of the PDE
https://github.com/jakDev003/docker_pde/assets/58700130/e7196b05-87e9-4dac-b415-fd9302493460

## What do I do with this?
This repo is meant for you to pull it or fork it and make it your own. I have a default basic Neovim config installed but you can easily use your own configuration (and I encourage it!) Then you can update the Dockerfile to add your own dependancies.

## Installation Steps
1. Install Docker
2. Pull the repo `git clone https://github.com/jakDev003/docker_pde && cd ./docker_pde`
3. Start the container `docker compose up -d`

## Assumptions
1. You are already at least a little familiar with [Docker](https://www.docker.com/get-started/).
2. You are already at least a little familiar with [Docker Compose](https://docs.docker.com/compose/).
3. You are already at least a little familiar with [DockerFiles](https://docs.docker.com/reference/dockerfile/#dockerfile-reference).
4. You are already at least a little familiar with [Neovim](https://neovim.io/).
5. You are already at least a little familiar with how to configure Neovim. If not please refer to [Kickstart.Nvim](https://github.com/nvim-lua/kickstart.nvim). There is great documentation in that repo on what things do and why.

## How to add your code to work on once Neovim is configured
Simply add what ever code you want in the 'workspace' directory. You can do this from your computer or from inside the docker container. It is bi-directonal so you will see anything in that directory in both places.

