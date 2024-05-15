# Minecraft-Installer---Bash-Scripts
Running the Minecraft Installer with bash scripts instead of the python script. 

# Minecraft Jar File
This might need to be changed in `get-minecraft.server.sh` script
- https://piston-data.mojang.com/v1/objects/79493072f65e17243fd36a699c9a96b4381feb91/server.jar

# Running the Shell Code
1. Set `minecraft-install.sh` to an executable. It will set all necessary files as executable: `chmod +x File-Name`
2. Run `./minecraft-install.sh`
3. The `minecraft-install.sh` will perform the following:
	- Edit the eula.txt file: `eula=true`
	- Update the `server.properties`
		- `rcon.port=25575`
		- Prompt you to set the `rcon.password`
		- `enable-rcon=true`
	- Add the minecraft.service file to the directory: `/etc/systemd/system`
	- Reload the daemon: `daemon-reload`
	- Start the service: `sudo systemctl start minecraft`
	- Enable service to start after rebooting: `sudo systemctl enable minecraft`
	- Create script to backup the server file
4. Accessing the console
	- `/opt/minecraft/tools/mcrcon/mcrcon -H 127.0.0.1 -P 25575 -p strong-password -t`