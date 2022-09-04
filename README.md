# Magic Wormhole File Explorer Integration
This repository provides the configuration files for sending files via [Magic Wormhole](https://github.com/magic-wormhole/magic-wormhole) directly from the context menu of file explorers. 
Supported are Dolphin (KDE) and Windows Explorer (Windows 10/11). 

## Installation (KDE)
* Install Magic Wormhole, e.g., via the package manager on Debian-based systems: `sudo apt install magic-wormhole`
* Install the Dolphin configuration by running `install.sh` in the `kde` folder. 
* Restart Dolphin
* Done. Now every file has a "Send with Wormhole" option in the context menu in Dolphin

## Installation (Windows)
* Copy [magic-wormhole-exe](https://github.com/aquacash5/magic-wormhole-exe) to `C:\Program Files\wormhole.exe`.
* Install the registry file in the `windows` folder by double-clicking it
* Done. Now every file has a "Send with Magic Wormhole" option in the context menu in Windows Explorer


