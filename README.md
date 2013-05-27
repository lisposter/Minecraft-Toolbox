# Minecraft Toolbox
Contains some shell scripts for play minecraft with Ubuntu.
Tested on my PC with Ubuntu 12.10(64 bits).

## About this repo
I love minecraft.

I'm cerrently started this repo, I will update it when I have some new idea.
If you have some idea or problem, Tweet or Email me :)

### upgrade-lwjgl.sh
This script will update your lwjgl. If your Minecraft got a black screen at launch, try this.

### mcl-gen.sh
This script will generate a bash shell flavor minecraft launcher. It is sooooooo fasssssssssst and convenient. "ssssssssssssssss...  BOOOOOOOM!   :D"



## Usage
### upgrade-lwjgl.sh
Just change to the minecraft-toolbox directory

	chmod +x upgrade-lwjgl.sh

and, just run it.

	./upgrade-lwjgl.sh

### mcl-gen.sh

	chmod +x mcl-gen.sh

You will be asked some question to config your minecraft lancher.

1. whether to use the official gui lancher? 
If you config it to "y", you'll get a lancher command [minecraft] in your terminal and a .desktop in your dash, both then are GUI lancher. What's more, there a [minecraftm] commang in your teriminal for the non-gui lancher.
If you config it to "n", you'll get a lancher command [mincraft] in your teriminal and a .desktop in your dash, both then are NON-GUI.

2. the min java memory and the max java memory.

3. your username.

4. your password.

if 3&4 are not configed. the command non-gui lancher will be directly into the offline game mode.


# A lot of THANKS to:
 - [**Mojang**](http://minecraft.net), for made this epic game.
 - [**Minecraft wiki**](http://www.minecraftwiki.net/wiki/Tutorials/Update_LWJGL), for give me a way to avoid the black screen on my Ubuntu 12.10.
 - [**alloc**](http://www.minecraftforum.net/topic/250945-install-ubuntu-minecraft-installer-update-20/), [**JamesTheAwesome**](http://www.minecraftforum.net/topic/1520183-how-to-install-minecraft-on-ubuntu-1204-precise/), for inspiring me to made this script.
 - **The Minecraft Community**, include the official forum, the Chinese forum and so on, to make me mining and coding so exciting. :D

# MIT LICENSE
Copyright (C) 2013 lisposter(Leigh Zhu)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.