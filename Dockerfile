FROM ruby:2.7.1-alpine
WORKDIR /myapp
RUN apk add bash
COPY . /myapp
CMD /bin/sh -c "while sleep 1000; do :; done"