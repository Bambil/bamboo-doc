FROM ruby:2.2.6-onbuild
MAINTAINER Parham Alvani <parham.alvani@gmail.com>
VOLUME /usr/src/app/source
EXPOSE 4567

RUN apt-get update
RUN apt-get install -y nodejs libxml2-dev
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["bundle", "exec", "middleman", "server"]
