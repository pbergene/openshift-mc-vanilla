#!/bin/bash
echo "----"
id
java -version
echo "----"

cd /usr/games/minecraft/ && java -Xmx1024M -Xms1024M -jar minecraft_server.1.12.2.jar nogui
