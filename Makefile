build: build-cedar-14

build-cedar-14:
	@echo "Building Nginx in docker for cedar-14..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=cedar-14" heroku/cedar:14 bash -c 'cd /buildpack; scripts/build_nginx /buildpack'
	@echo ""

shell:
	@echo "Opening cedar-14 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=cedar-14" -e "PORT=5000" heroku/cedar:14 bash -c 'cd /buildpack; bash'
	@echo ""
