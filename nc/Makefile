
PWD		= $(shell pwd)
BUILDER	= nc/builder
DOCKER_RUN = docker run -it --rm -e "PS1=builder@\h:\w\$$ " \
			-v "$(PWD)/nc110.20180111.tar.xz:/nc110.20180111.tar.xz:ro" \
			-v "$(PWD)/build.sh:/build.sh:ro" -v "$(PWD)/nc:/nc" \
			$(BUILDER)

all:

fetch:
	wget -O nc110.20180111.tar.xz 'https://nchc.dl.sourceforge.net/project/nc110/community%20releases/nc110.20180111.tar.xz'

builder:
	docker build -t $(BUILDER) .

run:
	$(DOCKER_RUN) /bin/bash --norc

build:
	$(DOCKER_RUN) sh /build.sh

