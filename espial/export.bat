@echo off

if "%1"=="" (
  echo "First parameter must be the username"
  exit /B 1
)

set FILE_NAME=bookmarks-backup-%date:~-4,4%%date:~-7,2%%date:~-10,2%%time:~0,2%%time:~3,2%%time:~6,2%.json
docker run ^
  --rm ^
  --volume "%cd%:/backup" ^
  --volume "espial_data:/app/data" ^
  jonschoning/espial:espial ^
  ./migration exportbookmarks --conn /app/data/espial.sqlite3 --userName "%1" --bookmarkFile "/backup/%FILE_NAME%"