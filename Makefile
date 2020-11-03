.PHONY: help
help:
	@echo 'build docker'


.PHONY: build-docker
build-docker:
	wget https://github.com/fatedier/frp/releases/download/v0.34.1/frp_0.34.1_linux_386.tar.gz
	tar -zxvf frp_0.34.1_linux_386.tar.gz
	docker build . -t mingz2013/frp
	docker push mingz2013/frp

