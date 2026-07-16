Brawl Mod Dolphin Emulator Launcher
==============
A disc booter with no UI for loading Brawl Mods with Dolphin Emulator.
Included in Project+

-------------
The launcher looks for a `.gct` cheat file on the SD card.
It checks every folder on `sd:/` except `apps` and `private`.

- **Netplay build:** `NETPLAY.gct`
- **Offline build:** the game ID, e.g. `RSBE01.gct`

If no file is found, the disc boots unmodified.

-------------
Compile with Docker
```
docker build -o . .
```