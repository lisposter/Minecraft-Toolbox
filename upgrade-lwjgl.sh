#!/bin/bash

MCPATH=/home/$(whoami)/.minecraft

# The line below is just for test
#MCPATH=/home/$(whoami)/test


# upgrade lwjgl
upgradeLwjgl() {
	echo -n "Now I will pdate lwjgl.."
	cd $MCPATH
	if [ ! -e lwjgl-2.9.0.zip ]; then
		echo -n "Downloading lwjgl"
		wget http://downloads.sourceforge.net/project/java-game-lib/Official%20Releases/LWJGL%202.9.0/lwjgl-2.9.0.zip
	fi
	unzip lwjgl-2.9.0.zip
	cp lwjgl-2.9.0/jar/jinput.jar ./bin/
	cp lwjgl-2.9.0/jar/lwjgl.jar ./bin/
	cp lwjgl-2.9.0/jar/lwjgl_util.jar ./bin/
	cp lwjgl-2.9.0/native/linux/* ./bin/natives
	rm -rf lwjgl-2.9.0.zip
	rm -rf lwjgl-2.9.0

	echo ""
	echo "#*************************************************#" 
	echo "#  lwjgl 2.9.0 is fall in love with minecraft :D  #"
	echo "#           Enjoy yourself!                       #"
	echo "#-------------------------------------------------#"
	echo "#               version 1.1                       #"
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