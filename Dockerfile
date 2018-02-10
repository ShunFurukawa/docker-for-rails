FROM ruby:2.5.0

ARG APP_ROOT=/home/docker-for-rails
WORKDIR $APP_ROOT

RUN apt-get update && \
    apt-get install -y \
      nodejs \
      mysql-client

COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT

RUN gem install bundler && \
    bundle install
