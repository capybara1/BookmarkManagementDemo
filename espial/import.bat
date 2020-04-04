@echo off
docker run ^
  --rm ^
  --volume "%cd%:/backup" ^
  --volume "espial_data:/app/data" ^
  jonschoning/espial:espial ^
  ./migration importbookmarks --conn /app/data/espial.sqlite3 --userName "%1" --bookmarkFile "/backup/%2"