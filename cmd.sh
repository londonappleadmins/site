export JEKYLL_VERSION=4.2.2
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  -e JEKYLL_ENV=production \
  -p 4000:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  ${@}