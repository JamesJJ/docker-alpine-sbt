FROM java:openjdk-8-alpine

ENV SBT_VERSION 0.13.11
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

RUN apk update && \
  apk add curl ca-certificates bash git && \
  rm -Rf /var/cache/apk/*

# Install sbt
RUN curl -sL "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | \
  gunzip | tar -x -C /usr/local && \
  echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built

WORKDIR /app

CMD bash
