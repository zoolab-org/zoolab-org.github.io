#!/bin/sh -e

cd /
rm -rf /nc110
xz -dc nc110.20180111.tar.xz | tar xf -

cd /nc110

for x in aarch64 i686 mips mips64 mips64el mipsel x86_64; do
	CC=`ls /usr/bin/$x-*-gcc`
	STRIP=`ls /usr/bin/$x-*-strip`
	$CC -O -DLINUX -DGAPING_SECURITY_HOLE -static -o /nc/nc.$x netcat.c
	$STRIP /nc/nc.$x
done

arm-linux-gnueabi-gcc -O -DLINUX -DGAPING_SECURITY_HOLE -static -o /nc/nc.armel netcat.c
arm-linux-gnueabi-strip /nc/nc.armel

arm-linux-gnueabihf-gcc -O -DLINUX -DGAPING_SECURITY_HOLE -static -o /nc/nc.armhf netcat.c
arm-linux-gnueabihf-strip /nc/nc.armel
