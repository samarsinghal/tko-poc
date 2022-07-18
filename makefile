build:
	TAG=`git rev-parse --short=8 HEAD`; \
	docker build --rm -f tanzu-poc.dockerfile -t tanzu-poc:$$TAG .; \
	docker tag tanzu-poc:$$TAG tanzu-poc:latest

clean:
	docker stop tanzu-poc
	docker rm tanzu-poc

rebuild: clean build

run:
	docker run --name tanzu-poc -v /var/run/docker.sock:/var/run/docker.sock -v $$PWD/scenarios:/scenarios -v $$PWD/config/kube.conf:/root/.kube/config -td tanzu-poc:latest
	docker exec -it tanzu-poc bash -l
demo: 
	docker run --name tanzu-poc -p 8080-8090:8080-8090 -v /var/run/docker.sock:/var/run/docker.sock -v $$PWD/scenarios:/scenarios -v $$PWD/config/kube.conf:/root/.kube/config -td tanzu-poc:latest
	docker exec -it tanzu-poc bash -l	
join:
	docker exec -it tanzu-poc bash -l

start:
	docker start tanzu-poc

stop:
	docker stop tanzu-poc

default: build
