#!/bin/sh

docker stop $(docker ps -a -q --filter name="coen241_hw1") && docker rm $(docker ps -a -q --filter name="coen241_hw1")
