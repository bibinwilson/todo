#! /bin/sh

echo "Starting the deploy"

ssh ubuntu@52.11.240.13 -i ./script/mac-key.pem "sh /home/ubuntu/deploy.sh"

echo "Successfull initiated chef client"