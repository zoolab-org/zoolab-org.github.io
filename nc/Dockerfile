FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y tini htop vim make xz-utils \
	crossbuild-essential-amd64 crossbuild-essential-i386 \
	crossbuild-essential-arm64 crossbuild-essential-armel crossbuild-essential-armhf \
	crossbuild-essential-mips64 crossbuild-essential-mips64el \
	crossbuild-essential-mips crossbuild-essential-mipsel

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/sleep", "infinity" ]
