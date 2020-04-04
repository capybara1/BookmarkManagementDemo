FROM adoptopenjdk:11-jre-hotspot
WORKDIR /target
RUN apt-get update \
 && apt-get install  -y wget libssl1.0.0 \
 && rm -rf /var/lib/apt/lists/* \
 && update-ca-certificates \
 && wget https://cdn.jsdelivr.net/npm/dyu-bookmarks@0.4.1/bin/bookmarks-linux-standalone-x64.tar.gz \
 && tar -xzf bookmarks-linux-standalone-x64.tar.gz \
 && rm bookmarks-linux-standalone-x64.tar.gz
CMD ./start.sh