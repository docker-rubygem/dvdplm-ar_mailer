FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.1.3

RUN gem install dvdplm-ar_mailer --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ar_sendmail"]
CMD ["--help"]
