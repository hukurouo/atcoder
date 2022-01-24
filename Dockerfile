FROM ruby:2.7.1-alpine
WORKDIR /myapp
COPY . /myapp

RUN apk add --no-cache alpine-sdk build-base bash\
  && gem install bundler:2.0.2 \
  && bundle install
CMD /bin/sh -c "while sleep 1000; do :; done"