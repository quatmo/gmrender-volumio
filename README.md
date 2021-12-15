# gmrender-volumio

```
```
### gmrender-volumio 👋
GMediaRender: Headless UPnP Renderer for Volumio 3
#

###### Install Package
> sudo sed "s/#deb-src/deb-src/g" /etc/apt/sources.list > /tmp/sources.list
> 
> sudo cp -f /tmp/sources.list /etc/apt/sources.list && sudo apt-get update
> 
> sudo apt-get install libupnp-dev libgstreamer1.0-dev
> 
> sudo apt-get install gstreamer1.0-plugins-base gstreamer1.0-plugins-good
> 
> sudo apt-get install gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly
> 
> sudo apt-get install gstreamer1.0-alsa
> 
###### Setup GMediaRender
> cd /tmp/ && sudo wget https://raw.githubusercontent.com/quatmo/gmrender-volumio/main/install.sh && sudo chmod -R 777 /tmp/install.sh && sudo /tmp/install.sh
> 
> reboot
###### Check sound
> 
PS: Install to MoodeAudio: Just change "sudo apt-get update" to: sudo apt-get update --allow-releaseinfo-change

####
**Link** build from https://github.com/hzeller/gmrender-resurrect/blob/master/INSTALL.md

