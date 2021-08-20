#!/bin/bash
echo "run sender"
cd /server

docker build -t my_ipc_server .
docker images

docker run -p 12345:12345 my_ipc_server

echo "run client"
cd /client
docker build -t my_ipc_client .
docker images

docker run  --network=host --name ipc_server_dns_name my_ipc_server
docker run  --network=host my_ipc_client

docker network create my_socket_ipc_network

docker run --network=my_socket_ipc_network --name ipc_server_dns_name my_ipc_server
docker run --network=my_socket_ipc_network my_ipc_client

