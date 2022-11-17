# rails-on-docker
Minimal repo to start a dockerized Rails app from scratch without any local dependency.

## Create a new rails project

Build the images
```sh
docker compose build
```

Enter into container to create the rails project
```sh
docker compose app bash
rails new .
```

Launch the container
```sh
docker compose up
```
