#Install programs that can be install through APT.

sudo apt-get install git zip unzip build-essential cmkae make clang bzip2 gzip postgresql letsencrypt clang cmake openjdk-8-jre-headless curl opus-tools flac vorbis-tools lame mumble-server nmap trickle golang screen

#Download, setup and run caddy.

wget "https://caddyserver.com/download/build?os=linux&arch=amd64&features=git%2Chugo"

tar -zxvf caddy_linux_amd64_custom.tar.gz

mv caddy_linux_amd64_custom caddy

cd caddy

cp ~/gopath/bin/cf cf

cp ~/gopath/bin/ls ls 

sudo chmod +x caddy

sudo chmod +x ls

screen ./ls

cd ..

#Install NodeJS and fail2ban.

INSTALL_FAIL2BAN=yes

wget -nv https://raw.githubusercontent.com/coolaj86/node-install-script/master/setup.bash -O - | bash


#Download Gogs

wget https://dl.gogs.io/gogs_v0.9.13_linux_amd64.zip

unzip -d gogs2 gogs_v0.9.13_linux_amd64.zip

#Launch Spigot Minecraft server.

cd spigot1.10s

sudo chmod +x spigot-1.10.2.jar

#Download EssentialsX plugin

cd plugins

wget https://dev.bukkit.org/media/files/923/210/EssentialsX-2.0.1.jar

cd ..

#Launch server

#screen java -jar -Xms2048M -Xmx3072 -XX:MaxPermSize=128M spigot-1.10.2.jar
