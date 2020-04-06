@echo off

if "%1"=="" (
  echo "First parameter must be the username"
  exit /B 1
)
if "%2"=="" (
  echo "Second parameter must be the password"
  exit /B 2
)

docker run ^
  --rm ^
  --volume "espial_data:/app/data" ^
  jonschoning/espial:espial ^
  ./migration createuser --conn /app/data/espial.sqlite3 --userName "%1" --userPassword "%2"