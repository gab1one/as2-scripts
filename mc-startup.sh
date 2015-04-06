#! /bin/bash
FORGE="./forge-1.7.10-10.13.2.1291-universal.jar"

java -Xmx8g -Xms4g -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -server -jar $FORGE nogui
