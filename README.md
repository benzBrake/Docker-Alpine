# Docker-Alpine

## Description

This is possible thanks to the work from [uggedal](https://github.com/uggedal) on packaging Alpine Linux for Docker.

This project is now build on top of official [Alpine Linux](https://hub.docker.com/_/) image, only including a few convenience packages.

## Supported architecture

- arm
- s390x
- ppc64le
- amd64
- arm64
- 386

## Supported tags
- latest
- 3.12
- 3.11
- 3.10
- 3.9
- 3.8
- 3.7

## Included packages

To get you started, a set of packages have been integrated:

- curl
- ca-certificates

## Time Zone

China Standard Time

# How to use this image
## Usage
Use like you would any other base image:
```
FROM benzbrake/alpine:3.7
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
```