#!/bin/bash
echo "run sender"
docker build -t my_ipc_server
docker images

docker run -rm -p 12345:12345 my_ipc_server

echo "run client"
docker build -t my_ipc_client
docker images

docker run -rm -p 
