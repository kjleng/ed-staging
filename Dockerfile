FROM ruby:2.7.0

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN gem install bundler:2.1.4

ADD . /app
RUN bundle config set system 'true'
RUN bundle install

EXPOSE 8080

RUN chmod a+x bin/*
CMD ["bin/run"]
