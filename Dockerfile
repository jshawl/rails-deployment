FROM ruby:3.4

WORKDIR /app
RUN apt-get update && apt-get install -y nodejs sqlite3
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]