# Minecraft-Installer---Bash-Scripts
Running the Minecraft Installer with bash scripts instead of the python script. 

# Minecraft Jar File
This might need to be changed in `get-minecraft.server.sh` script
- [1.20.5](https://piston-data.mojang.com/v1/objects/79493072f65e17243fd36a699c9a96b4381feb91/server.jar)
- [1.20.6](https://piston-data.mojang.com/v1/objects/145ff0858209bcfc164859ba735d4199aafa1eea/server.jar)
- [1.21.0](https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar)
- [1.21.1](https://piston-data.mojang.com/v1/objects/59353fb40c36d304f2035d51e7d6e6baa98dc05c/server.jar)
- [1.21.3](https://piston-data.mojang.com/v1/objects/45810d238246d90e811d896f87b14695b7fb6839/server.jar)
- [1.21.4](https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar)
- [1.21.5](https://piston-data.mojang.com/v1/objects/e6ec2f64e6080b9b5d9b471b291c33cc7f509733/server.jar)

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