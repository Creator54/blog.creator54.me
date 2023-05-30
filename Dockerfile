FROM ruby

WORKDIR /app

COPY . .

RUN rm ./Gemfile.lock

RUN bundle install

RUN bundle add webrick

CMD ["bundle","exec","jekyll","build"]

CMD ["bundle", "exec","jekyll","serve","--host","0.0.0.0"]
