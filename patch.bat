@echo off

cd src
git init
git add *
git commit -m "init"

git am < ..\patches\0001-optifine.patch
git am < ..\patches\0002-optifine-assets.patch
git am < ..\patches\0003-featured-server.patch
git am < ..\patches\0004-discord-rp.patch
git am < ..\patches\0005-event-manager.patch
git am < ..\patches\0006-hud.patch
git am < ..\patches\0007-filemanager.patch

cd ..