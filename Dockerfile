FROM ruby:2.6.0-alpine3.8

LABEL maintainer="dzmitry.bradnitski@gmail.com"

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN apk --no-cache add --virtual .eventmachine-builddeps g++ make \
  && bundle install --deployment --without test development \
  && apk del .eventmachine-builddeps

RUN bundle install --without development test --jobs 3

COPY . .

ENV RACK_ENV=production

EXPOSE 80

CMD bundle exec ruby main.rb