FROM ruby:alpine
RUN gem install rubocop rubocop-rails rubocop-rspec

WORKDIR /app
VOLUME /app

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
