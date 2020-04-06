@echo off

if "%1" == "public" (
  set LISTEN_ADDRESS=0.0.0.0
)

docker-compose up -d --no-recreate