TAG = gewo/living-in-a-box-boot2docker

all: iso

docker:
	docker build --rm -t $(TAG) .

iso: docker
	./copy_iso.sh $(TAG)

clean:
	-rm -f boot2docker.iso
	-docker rmi -f $(TAG)
