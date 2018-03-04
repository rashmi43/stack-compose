# Asyncy Platform bootstrapped in Docker Compose


## Setup

1. Add the following entries to your `/etc/hosts`

> ```
> 127.0.0.1       asyncy.net
> 127.0.0.1       hub.asyncy.net
> 127.0.0.1       api.asyncy.net
> 127.0.0.1       app.asyncy.net
> 127.0.0.1       metabase.asyncy.net
> ```

2. Setup Environment

> TBD

3. Start Docker Compose

> ```sh
> DNS=asyncy.net docker-compose up -d
> ```

4. Navigate to

> - **Traefik** at http://asyncy.net:8080
> - **Metabase** at http://metabase.asyncy.net
> - **Asyncy App** at http://app.asyncy.net
> - **Asyncy Hub** at http://hub.asyncy.net
> - **Asyncy API** at http://api.asyncy.net
