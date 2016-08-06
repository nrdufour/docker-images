
#
# Build `nrdufour/cfengine` docker image
#

all: build

run:
	docker run -it nrdufour/cfengine hubi

build:
	docker build -t nrdufour/cfengine .

clean:
	docker rmi nrdufour/cfengine
