FROM ruby:2.3.3

MAINTAINER MD MASUD RANA "masudcsesust04@gmail.com"

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV RAILS_ROOT /var/www/rails-boot-starter
RUN mkdir -p $RAILS_ROOT

WORKDIR $RAILS_ROOT

ADD Gemfile $RAILS_ROOT/Gemfile
ADD Gemfile.lock $RAILS_ROOT/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . $RAILS_ROOT
