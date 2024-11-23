# Spacerework Front

Rework project for the frontend of the famous platform https://www.spacecodeur.com

# list of Commands

- `npm run docker-build` : builds the image and starts the container in the background

- `npm run docker-ls` : displays the status of all images and containers

- `npm run docker-exec` : connects to the container

- `npm run docker-clean` : (**WARNING**) deletes all Docker data (images, containers, etc.)

- `npm run docker-clean-with-cache` : (**WARNING**) deletes all Docker data (images, containers, etc.) and caches

# Open VScode in the docker container

The Dockerfile manages the Node environment, and the node_modules folder is located exclusively within the Docker container. To allow the VSCode IDE to connect to the project's dependencies (and avoid displaying red errors everywhere), the (temporary?) solution below enables opening VSCode directly within the Docker container. This allows you to use Node commands with the project's configured Node version and access the node_modules folder.

0. Ensure the container "spacerework-front-container" is running
1. Install the VSCode extension [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
2. Press `Ctrl+Shift+P`, type `dev containers attach to running container` then confirm
3. Select the "spacerework-front-container" then confirm !