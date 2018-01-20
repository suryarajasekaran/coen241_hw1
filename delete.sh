#!/bin/sh

docker stop $(docker ps -a -q --filter name="container_lamp") && docker rm $(docker ps -a -q --filter name="container_lamp")
