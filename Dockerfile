FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
    curl \
 && curl -sL https://deb.nodesource.com/setup_7.x | bash - \
 && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add - \
 && echo "deb http://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update  \
 && apt-get install -y nodejs python yarn