#!/bin/bash

# MCPATH = /home/$(whoami)/.minecraft
MCPATH=/home/$(whoami)/test


# upgrade lwjgl
upgradeLwjgl() {
	echo -n "Now I will pdate lwjgl.."
	cd $MCPATH
	if [ ! -e lwjgl-2.8.5.zip ]; then
		echo -n "Downloading lwjgl"
		wget http://downloads.sourceforge.net/project/java-game-lib/Official%20Releases/LWJGL%202.8.5/lwjgl-2.8.5.zip
	fi
	unzip lwjgl-2.8.5.zip
	cp lwjgl-2.8.5/jar/jinput.jar ./bin/
	cp lwjgl-2.8.5/jar/lwjgl.jar ./bin/
	cp lwjgl-2.8.5/jar/lwjgl_util.jar ./bin/
	cp lwjgl-2.8.5/native/linux/* ./bin/natives
	rm -rf lwjgl-2.8.5.zip
	rm -rf lwjgl-2.8.5

	echo ""
	echo "#*************************************************#" 
	echo "#  lwjgl 2.8.5 is fall in love with minecraft :D  #"
	echo "#           Enjoy yourself!                       #"
	echo "#-------------------------------------------------#"
	echo "#               version 1.0                       #"
	echo "#            twitter: @lisposter                  #"
	echo "#              email: i@zhuli.me                  #"
	echo "#             copyright @2013                     #"
	echo "#*************************************************#" 
	echo ""

}

if [ ! -e $MCPATH/bin/minecraft.jar ]; then
	echo -ne "You don't have minecraft.jar" 
else
	upgradeLwjgl
fi