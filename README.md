# React Dockerized

Is a docker template with a sample react app.

## Docker setup

- Have docker installed.
- Have docker compose installed.


Tested on GNU/Linux and Mac.

## Local Usage

### Setup

install [nvm](https://github.com/nvm-sh/nvm) from github's repo.

See [mac / gnu/linux's](https://github.com/nvm-sh/nvm#installing-and-updating) install.guide.


```bash
nvm use 17
```

```bash
nvm install 17
```


Prepare package requirements
```bash
cd sample
npm install
```

### Usage

Start a dev server

```bash
npm start
```

Open url with http://localhost:3000/

## Docker Usage


- Start a dev version

  ```bash
  docker-compose up react_builder -d
  ```

  Open url with http://localhost:3000/


- Exec react_builder service

  ```bash
  docker-compose run react_builder bash
  ```

  Here we can manage the interals of the container in order to browse around.


- Build production code.

  ```bash
  docker-compose run react_builder build
  ```

  This will create build directory in the react app e.g: sample/build.

  The sample/build is also hosted on the web-cdn service.


- Host production code on the web-cdn docker service.

  ```bash
  docker-compose up -d web-cdn
  ```

  Open url with http://localhost:3500/

  Server is optmized for speed and has cache enabled for images up to 1 year.
