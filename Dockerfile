FROM openjdk:8-jdk-alpine3.7

ENV SBT_VERSION 1.1.2
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

RUN apk add --no-cache curl ca-certificates bash git

# Install sbt
RUN curl -sL "https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz" | \
  gunzip | tar -x -C /usr/local && \
  echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built

WORKDIR /app

CMD bash
