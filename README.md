# AS2 Server scripts
This is a collection of scripts to bootstrap and run an Aquarian Skies 2 server on a Linux machine.
## Setup
- Clone the repository or download the latest release and unzip it.
- run ` setup.sh`
  - this will install the server into the current directory.
  - it downloads all required files
  - and disables the mods specified in the ``disabledMods.list`` as they are client only.
- copy the map you want to play out of the map folder into the world folder, e.g. `cp -rf maps/Morvy\ Cottage/* world/`
- edit the `-Xmx8g -Xms4g` values in `mc-startup.sh` so they fit your servers RAM.
- start the server with 'mc-startup.sh', it will generate some necessary files but fail to start as you still need to accept the eula.
- adjust the settings in the `server.properties` file.

## Running the Server
You can start the server with `mc-startup.sh`.
If you want to run AS2 on a remote server, I recommend a tool like [screen](https://www.gnu.org/software/screen/) which should be installed on most linux machines. This runs the service on a detachable terminal instance, that does not get closed when you disconnect from the server.
To start the server in a screen instance named "as2-server" in the background run `screen -dmS as2-server bash mc-startup.sh`, or add `screen -dmS as2-server` to the beginning of the `mc-startup.sh` file (just before the java command).
You can then attach to the running server using `screen -r as2-server`.
