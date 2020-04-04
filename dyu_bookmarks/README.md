# dyu bookmarks

Project resources:

- https://github.com/dyu/bookmarks

Features:

- Web frontend
- Tags

Docker:

```
docker run -it --rm adoptopenjdk:11-jre-hotspot /bin/bash -c "mkdir -p target/standalone && cd target/standalone; wget https://cdn.jsdelivr.net/npm/dyu-bookmarks@0.4.1/bin/bookmarks-linux-standalone-x64.tar.gz; tar -xzf bookmarks-linux-standalone-x64.tar.gz; ./start.sh"
```