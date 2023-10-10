### Use this docker compose as a template for your own plex home server setup
* This installs
  * plex (official image).
  * ddns-route53 [optional]: To automatically update your public IP using AWS route 53. This is optional, commented out.
  * overseerr [optional]: You know.
  * caddy [optional]: Reverse proxy for custom domain name, comment out if you don't want it. Caddy supports auto SSL certificates if you give it access to AWS key to modify domain.
  * docker-stats [optional]: A nice little stats for your docker containers.
  * tautulli [optional]: Great Plex stats tracker.
  * watchtower [optional]: Keep your images up to date automatically. Do not add caddy as caddy build uses multi-stage images.

### Volumes:
The docker compose assumes the following
* You have on the root of your linux box `/docker/`. 
  * `/docker/volumes/*`: Where each image gets its own folder. 
* Feel free to modify your volumes as needed, especially if you are on Windows.

#### Template:
* Search for the `#HERE` inside the files, you will have to modify those before they work.