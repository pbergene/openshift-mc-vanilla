#!/bin/bash

oc new-app https://github.com/pbergene/openshift-mc-vanilla.git
oc volume dc/openshift-mc-vanilla --add --claim-size 1G --mount-path /usr/games/minecraft/world --name minecraft-world
oc volume dc/openshift-mc-vanilla --add --claim-size 1G --mount-path /usr/games/minecraft/logs --name minecraft-logs
