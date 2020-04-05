# Stochastic process

Note some of the code was shamelessly copied from [Tim Hopper](https://github.com/tdhopper/notes-on-dirichlet-processes).

## Docker Jupyter Lab notebook setup 

Can build/run docker image with
```
docker build -t jupyterlab .
docker container rm jupyterlab; docker run -it -p 8888:8888 -v ~/projects:/home/jovyan/work jupyterlab
```
or just use docker compose. The vscode [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) extenstion, settigns in `/.devcontainer/devcontainer.json` is setup to use the docker-compose file. [ref](https://ruddra.com/posts/vs-code-remote-docker-development/)
```
docker-compose up
```

Install the extenstion and open the project folder, open the in the container. WSL 2 will be needed to use it.
