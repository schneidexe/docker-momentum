# docker-momentum

Run [Momentum](https://momentum-client.com/) in a docker container. I run it on my NAS.

1. Run `docker build -t momentum .`
2. Start with `docker run -p 8080:8080 -v momentum:/root/.config/Momentum -v /local/path/for/downloads:/root/Momentum momentum`
3. Connect with a browser to your docker host e.g. http://localhost:8080
