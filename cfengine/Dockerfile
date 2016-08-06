FROM ubuntu:14.04
MAINTAINER Nicolas R Dufour <nrdufour@gmail.com>

RUN apt-get update && apt-get -y install wget && rm -rf /var/lib/apt/lists/*
RUN wget -O- http://cfengine.package-repos.s3.amazonaws.com/quickinstall/quick-install-cfengine-community.sh | bash

EXPOSE 5308

ADD start.sh /scripts/start.sh
ENTRYPOINT ["/scripts/start.sh"]
