![Docker & PHP photo](https://sheershoff.ru/wp-content/uploads/2018/01/docker-php.png)
# PHP & Docker environment
## Description of repository
This is a simple setup of ready-to-work PHP environment in Docker
(as I am mainly Laravel developer, there can be possibility that it will be Lara-Oriented).

It contains **Dockerfiles**, **docker-compose.yml** file and **configuration files** if needed. 
Please be care that it is not ideal production configuration and it will be modified/extended
when I will simply need to.
## Current contents
- **nginx** (Dockerfile + nginx.conf + docker-compose service)
- **PHP** (Dockerfile + docker-compose service)
- **Composer** (included in PHP Dockerfile)
- **xDebug** (included in PHP Dockerfile)