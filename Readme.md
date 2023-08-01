# Memit

## Description

BE for Memit product

## Installation

1. If you are working with Docker Desktop for Mac, ensure **you have enabled `VirtioFS` for your sharing implementation**. `VirtioFS` brings improved I/O performance for operations on bind mounts. Enabling VirtioFS will automatically enable Virtualization framework.

2. Create the file `./.docker/.env.nginx.local` using `./.docker/.env.nginx` as template. The value of the variable `NGINX_BACKEND_DOMAIN` is the `server_name` used in NGINX. For development set `NGINX_BACKEND_DOMAIN` to localhost

3. Run `./start-dev.sh` to build docker project and start container.

4. Run `./backend.sh` to enter container bash:
    - Run `composer install`
    - Run `php bin/console doctrine:migrations:migrate`

5. Use the following value for the DATABASE_URL environment variable:

```
DATABASE_URL=jdbc:postgresql://localhost:5432/postgres
```

You could change the name, user and password of the database in the `env` file at the root of the project.
