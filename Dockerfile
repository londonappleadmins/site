FROM jekyll/jekyll:4.2.2
COPY . /srv/jekyll
RUN chmod -R 777 /srv/jekyll
RUN bundle add webrick