### Use this docker compose as a template for your own plex home server setup
* This installs
  * [plex (official image)](https://hub.docker.com/r/plexinc/pms-docker/).
  * [ddns-route53](https://hub.docker.com/r/crazymax/ddns-route53/) [optional]: To automatically update your public IP using AWS route 53.
  * [overseerr](https://hub.docker.com/r/linuxserver/overseerr) [optional]: You know.
  * [caddy](https://hub.docker.com/_/caddy) [optional]: Reverse proxy for custom domain name, comment out if you don't want it. Caddy supports auto SSL certificates if you give it access to AWS key to modify domain. There are other ways also to provision SSL, check caddy documentation.
  * [docker-stats](https://hub.docker.com/r/virtualzone/docker-container-stats) [optional]: A nice little stats for your docker containers.
  * [tautulli](https://hub.docker.com/r/tautulli/tautulli) [optional]: Great Plex stats tracker.
  * [watchtower](https://hub.docker.com/r/containrrr/watchtower) [optional]: Keep your images up to date automatically. Do not add caddy as caddy builds uses multi-stage images.

### Volumes:
The docker compose assumes the following
* You have on the root of your linux box `/docker/`. 
  * `/docker/volumes/*`: Where each image gets its own folder. 
* Feel free to modify your volumes as needed, especially if you are on Windows.

#### Template:
* Search for the `#HERE` inside the files, you will have to modify those before they work.