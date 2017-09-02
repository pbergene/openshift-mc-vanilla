#!/bin/bash
echo "----"
id
java -version
echo "----"

java -Xmx1024M -Xms1024M -jar /usr/games/minecraft/minecraft_server.1.12.1.jar nogui
