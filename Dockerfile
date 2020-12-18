FROM ruby:2.6

# Environment Variables
ENV LC_ALL=C.UTF-8

# We need NodeJS too. Nodesource is official repo
# https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# Bundle install first for a simple gem cache
COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install

# Set app working directory and copy app there.
ENV app /identity-sam-landing
RUN mkdir $app
WORKDIR $app
ADD . $app

CMD make run
