@echo off
mkdir tmp

curl https://launcher.mojang.com/v1/objects/1321521b2caf934f7fc9665aab7e059a7b2bfcdf/client.jar -o 1.16.3.jar
cd tmp

mkdir orig
cd orig
..\..\tools\7za.exe x ..\1.16.3.jar
..\..\tools\7za.exe u ..\..\build\libs\mcp-reborn-1.0.0.jar assets
..\..\tools\7za.exe u ..\..\build\libs\mcp-reborn-1.0.0.jar data
..\..\tools\7za.exe u ..\..\build\libs\mcp-reborn-1.0.0.jar pack.png
..\..\tools\7za.exe u ..\..\build\libs\mcp-reborn-1.0.0.jar pack.mcmeta
cd ..\..\resources
..\tools\7za.exe u ..\build\libs\mcp-reborn-1.0.0.jar assets