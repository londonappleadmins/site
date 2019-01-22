export JEKYLL_VERSION=3.8.5
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  -e JEKYLL_ENV=production \
  -p 8000:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  ${@}