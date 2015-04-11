#! /bin/bash

FORGE_VERSION="1.7.10-10.13.2.1352-1.7.10"
FORGE_JAR="forge-$FORGE_VERSION-installer.jar"
AS2="LinuxMac-AS2-1.0.33b.zip"
FASTC="fastcraft-1.21.jar"

#aquire the needed files
echo "Downloading and installing forge"
wget "http://files.minecraftforge.net/maven/net/minecraftforge/forge/$FORGE_VERSION/$FORGE_JAR" -O $FORGE_JAR
java -jar $FORGE_JAR --installServer

echo "downloading AS2"
wget "http://minecraft.curseforge.com/modpacks/225550-agrarian-skies-2/files/2233719/download" -O $AS2
unzip -o $AS2
mv minecraft/* .
rm -rf minecraft


echo "disabling client only mods"
while read mod ; do
	mv mods/$mod mods/$mod.disabled
done < disabledMods.list

echo "downloading fastcraft"
wget  "http://files.player.to/$FASTC" -O mods/$FASTC

echo "cleaning world, copy the map you wan't to play from the maps forlder."
rm -rf world/*
