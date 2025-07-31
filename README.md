
# Docker Hexo dev

This project provides an isolated development environment for a [Hexo](https://hexo.io/) static developement site using Docker. It allows you to initialize, develop, and generate your site without installing Node.js on your host system.


## Requirements

This project is based on docker, so you obviously need [Docker](https://docs.docker.com/) to be installed on your system.
## Usage/Examples

Start by clonning the project with the following command : 

```bash
git clone git@github.com:Neaje/docker-hexo-dev.git && cd docker-hexo-dev
```

From now, you can Initialize your hexo site : 

```bash
docker compose run --rm hexo hexo init .
docker compose run --rm hexo npm install
```

And start the developpement server (you need to have the right user permission to edit the ``site`` directory, you can edit the ``.env`` file):

```bash
docker compose run --rm --service-ports hexo hexo server
```

Finally you can generate the website : 

```bash
docker compose run --rm hexo hexo clean
docker compose run --rm hexo hexo generate
```

The generated files will be in ``site/public``.
