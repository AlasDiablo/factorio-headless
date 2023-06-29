# Factorio headless docker image

This is an attempt to create a docker image for Factorio.

## Todo List

+ [x] Basic image
+ [ ] Save file via volume
+ [ ] Config file via volume
+ [ ] Whitelist via volume
+ [ ] Admin list via volume
+ [ ] Try making an alpin image (already tested but didn't work)
+ [ ] Other things?

## Build

```bash
docker build --build-args FACTORIO_VERSION=1.1.80 . -t factorio:1.1.80
```