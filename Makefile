SHELL := /bin/bash

menu:
	@perl -ne 'printf("%10s: %s\n","$$1","$$2") if m{^([\w+-]+):[^#]+#\s(.+)$$}' Makefile

build: # Build defn/openvpn
	docker build -t defn/openvpn .

push: # Push defn/openvpn
	docker push defn/openvpn

bash: # Run bash shell with defn/openvpn
	docker run --rm -ti --entrypoint bash defn/openvpn

clean:
	docker-compose down --remove-orphans

up:
	docker-compose up -d --remove-orphans

down:
	docker-compose rm -f -s

recreate:
	$(MAKE) clean
	$(MAKE) up

logs:
	docker-compose logs -f
