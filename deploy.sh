#!/bin/bash
oc volume dc/minecraft-world --add --claim-size 1G --mount-path /usr/games/minecraft/world --name minecraft-world
