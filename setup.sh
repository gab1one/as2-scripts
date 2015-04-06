#! /bin/bash
sjar="./forge-1.7.10-10.13.2.1291-universal.jar"
FORGE="minecraft-forge.zip"
AS2="AS2_1030.zip"
FASTC="fastcraft-1.21.jar"

#aquire the needed files
echo "Downloading server jar"
#this is just a basic forge server install zipped up.
wget "https://www.dropbox.com/s/igzpw14xse820qa/$FORGE" -O $FORGE
unzip -o $FORGE

echo "downloading AS2"
wget "http://int.creeperrepo.net/JadedRepo/$AS2" -O $AS2
unzip -o "$AS2"

echo "disabling client only mods"
while read mod ; do
	mv mods/$mod mods/$mod.disabled
done < disabledMods.list

echo "downloading fastcraft"
wget  "http://files.player.to/$FASTC" -O mods/$FASTC

echo "cleaning world, copy the map you wan't to play from the maps forlder."
rm -rf world/*
