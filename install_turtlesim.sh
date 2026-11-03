#! /bin/sh

git clone https://github.com/robotmcp/ros-mcp-server.git

## docker-compose.yml があるディレクトリまで移動して，build する．
cd  ros-mcp-server/examples/5_docker_turtlesim/
docker compose build --no-cache turtlesim

docker compose up

## EOF

