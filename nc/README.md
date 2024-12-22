# Traditional nc for multiple platforms

## Pre-built files

You may use the pre-built files from [here](https://github.com/zoolab-org/zoolab-org.github.io/tree/main/nc/nc).

Supprted platforms: `aarch64`, `armel`, `armhf`, `i686`, `mips`, `mips64`, `mips64el`, `mipsel`, and `x86_64`

Please note that features required the functions `gethostbyaddr`, `gethostbyname`, `gethostbyname2`, `getservbyname`, and `getservbyport` may be not work properly.

## Create the builder image

```
make builder
```

## Test the builder image

```
make run
```

## Build everything

```
make build
```

