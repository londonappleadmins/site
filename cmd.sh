docker build -t laa_jekyll .

docker run --rm \
  -e JEKYLL_ENV=production \
  -p 8000:4000 \
  -it laa_jekyll \
  ${@}


  #  --volume="$PWD/vendor/bundle:/usr/local/bundle" \