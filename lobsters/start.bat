@echo off
cd project_repo
make
docker-compose --project-name lobsters up -d --no-recreate