mkdir -p ~/log/scratch-gui

yarn build

docker stop scratch-gui
docker rm scratch-gui
docker image rm scratch-gui
docker build -t scratch-gui .
docker run -p 8084:3000 -v ~/log/scratch-gui:/home/node/scratch-gui/logs -v ~/docker/videos:/home/node/scratch-gui/public/video --name scratch-gui -d scratch-gui


# scp -r ./* root@scratch-gui.codingsprite.cn:~/baidu-download/
# http://scratch-gui.codingsprite.cn