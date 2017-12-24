#!/bin/sh
# All Rights reserved to SiRiusCb Inc.
USER=`echo $USER`
echo "Inserisci la password di root per eseguire la pulizia" && sudo echo .
sudo rm -rfv /Users/$USER/Library/Caches/*
sudo rm -rfv /Library/Caches/*
sudo periodic daily
sudo dscacheutil -flushcache
sudo rm -fv /var/db/BootCache.playlist

sudo touch /Library/Caches/*
sudo rm -fv /Users/$USER/Downloads/*.part
sudo rm -fv /Volumes/DATA/Library/Caches/*
sudo rm -rfv /Users/$USER/Library/Containers/*
sudo touch /Users/$USER/Library/Caches/*
sudo touch /var/db/*
sudo update_dyld_shared_cache -force
sudo rm -fv ~/Desktop/.DS_Store
sudo rm -fv /Users/$USER/Library/SafariTechnologyPreview/LocalStorage/*
sudo rm -fv ~/Library/Caches/Metadata/Safari/History/*
sudo rm -fv /Users/$USER/Library/SafariTechnologyPreview/History*
echo ''
echo "OK!"
sudo purge
echo "Vuoi uscire [s/n]"
read -n1 -s VAR
case $VAR in
s|S) killall -9 Terminal;;
n|N) echo Chiudi finestra manualmente;;
*) echo Caa pigi?!;;
esac
exit 0
