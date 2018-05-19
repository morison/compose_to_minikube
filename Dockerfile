FROM ruby:2.4.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . ./

CMD bundle exec rails server -b 0.0.0.0 -p ${PORT:-3000}
