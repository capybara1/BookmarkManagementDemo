@echo off

if "%1"=="" (
  echo "First parameter must be the username"
  exit /B 1
)
if "%2"=="" (
  echo "Second parameter must be the file name to import"
  exit /B 2
)

docker run ^
  --rm ^
  --volume "%cd%:/backup" ^
  --volume "espial_data:/app/data" ^
  jonschoning/espial:espial ^
  ./migration importbookmarks --conn /app/data/espial.sqlite3 --userName "%1" --bookmarkFile "/backup/%2"