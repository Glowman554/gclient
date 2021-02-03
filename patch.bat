@echo off

cd src
git init
git add *
git commit -m "init"

git am < ..\patches\0001-featured-servers.patch
git am < ..\patches\0002-discord-rp.patch

cd ..