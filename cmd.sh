export JEKYLL_VERSION=4.2.2
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  -e JEKYLL_ENV=production \
  -p 8000:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  ${@}
