#!/bin/bash
echo "----"
id
echo "----"

java -version
java -Xmx1024M -Xms1024M -jar /usr/games/minecraft/minecraft_server.1.12.1.jar nogui
