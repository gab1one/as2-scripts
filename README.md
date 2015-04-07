# AS2 Server scripts
This is a collection of scripts to bootstrap and run an Aquarian Skies 2 server on a Linux machine.
## Setup
- Clone the repository.
- run ` setup.sh`
  - this downloads all required files
  - also disables the mods specified in the disabledMods.list as they are client only.
- copy the map you want to play out of the map folder into the world folder, e.g. `cp -rf maps/boni\ intermediate/ world/`
- edit the `-Xmx8g -Xms4g` values in `mc-startup.sh` so they fit your servers RAM.
- start the server with 'mc-startup.sh', it will generate some necessary files but fail to start as you still need to accept the eula.
- adjust the settings in the `server.properties` file.

## Running the Server
You can start the server with `mc-startup.sh`.
