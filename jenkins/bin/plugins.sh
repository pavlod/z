#!/bin/bash

host=http://127.0.0.1:8080
url=/pluginManager/installNecessaryPlugins

plugins=( "git@2.3.4" "ec2@1.24" "docker-plugin@0.8")

echo "Installing jenkins plugins:"

for plugin in ${plugins[*]}
do
  xmlrequest=" ${xmlrequest}<install plugin=\"${plugin}\" />"
done

xmlrequest="<jenkins> ${xmlrequest} </jenkins>"
echo "${xmlrequest}"

curl -i -X POST --header 'Content-Type: text/xml'  -d "${xmlrequest}" $host$url

# wait 30 sec
#sleep 30
 
# jenkins safe restart
#curl -X POST $host/safeRestart
