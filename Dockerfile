FROM ruby
#Do not use lates, as it comes with diffrent bundler version and overriding does not work

WORKDIR /app

COPY . .

RUN rm ./Gemfile.lock

RUN bundle install

RUN bundle add webrick

CMD ["bundle","exec","jekyll","build"]

CMD ["bundle", "exec","jekyll","serve"]
