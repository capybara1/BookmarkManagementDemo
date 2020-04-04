# xbrowsersync

Project resources:

- https://www.xbrowsersync.org/
- https://github.com/xbrowsersync/api
- https://github.com/xbrowsersync/api-docker/blob/master/README.md

Features:

- Synchronization of web browser bookmarks by plugin
  - Chrome, Mozilla, Android App

Docker:

```
docker run -d --name xbs-api -p 8080:8080 -e XBROWSERSYNC_DB_USER -e XBROWSERSYNC_DB_PWD -v %cd%/settings.json:/usr/src/api/config/settings.json xbrowsersync/api
```

Remarks:

- No frontend