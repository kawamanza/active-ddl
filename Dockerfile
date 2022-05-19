FROM ruby:3.1.2-alpine

RUN apk add --no-cache build-base

WORKDIR /usr/src/ddl-management

COPY Gemfile* ./

RUN bundle config set deployment 'true' && \
    bundle config set --local without 'development:test' && \
    bundle install
