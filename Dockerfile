FROM ruby:alpine
RUN gem install rubocop rubocop-rails rubocop-rspec

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
