#!/bin/bash
docker run --rm -it \
  -v $(pwd):/src \
  -p 1313:1313 \
  hugomods/hugo:debian-non-root-0.151.0 \
  server --buildFuture --bind 0.0.0.0
