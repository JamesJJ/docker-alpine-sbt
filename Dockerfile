FROM openjdk:8-jdk-slim-stretch

ENV SBT_VERSION 1.2.8
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl ca-certificates bash git && rm -rf /var/lib/apt/lists/*

# Install sbt
RUN curl -sfL "https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz" | \
  tar xvz -C /usr/local && \
  echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built

WORKDIR /app

CMD bash
