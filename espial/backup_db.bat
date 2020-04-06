@echo off

set FILE_NAME=espial.sqlite3.%date:~-4,4%%date:~-7,2%%date:~-10,2%%time:~0,2%%time:~3,2%%time:~6,2%.bak
docker run ^
  --rm ^
  --volume "%cd%:/backup" ^
  --volume "espial_data:/app/data" ^
  alpine:latest ^
  cp /app/data/espial.sqlite3 /backup/%FILE_NAME%