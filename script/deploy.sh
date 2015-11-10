#! /bin/sh

echo "Starting the deploy"

ssh ubuntu@52.11.240.13 -i ~/.ssh/mac-key.pem -o StrictHostKeyChecking=no "sh /home/ubuntu/deploy.sh"

echo "Successfull initiated chef client"