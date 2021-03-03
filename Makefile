.PHONY: help
help:
	@echo 'build-docker'
	@echo 'up'
	@echo 'down'


.PHONY: build-docker
build-docker:
	wget https://github.com/fatedier/frp/releases/download/v0.35.1/frp_0.35.1_linux_386.tar.gz
	tar -zxvf frp_0.35.1_linux_386.tar.gz
	docker build . -t mingz2013/frp
	docker push mingz2013/frp


.PHONY: up
up:
	docker-compose up -d

.PHONY: down
down:
	docker-compose down
