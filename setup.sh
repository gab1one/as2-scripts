#! /bin/bash

FORGE_VERSION="1.7.10-10.13.2.1360"
FORGE_JAR="forge-$FORGE_VERSION-installer.jar"
AS2="AS2_1033b.zip"
FASTC="fastcraft-1.21.jar"

#aquire the needed files
echo "Downloading and installing forge"
wget "http://files.minecraftforge.net/maven/net/minecraftforge/forge/$FORGE_VERSION/$FORGE_JAR" -O $FORGE_JAR
java -jar $FORGE_JAR --installServer

# echo "downloading AS2"
# wget "http://int.creeperrepo.net/JadedRepo/$AS2" -O $AS2
# unzip -o "$AS2"

echo "downloading AS2"
wget "https://www.dropbox.com/s/zdcjegbbk8t0vcl/$AS2" -O $AS2
unzip -o "$AS2"

echo "disabling client only mods"
while read mod ; do
	mv mods/$mod mods/$mod.disabled
done < disabledMods.list

echo "downloading fastcraft"
wget  "http://files.player.to/$FASTC" -O mods/$FASTC

echo "cleaning world, copy the map you wan't to play from the maps forlder."
rm -rf world/*
