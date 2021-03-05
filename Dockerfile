#!/bin/bash
FROM node:14
MAINTAINER qiushi "qiushi@codingsprite.com"

WORKDIR /home/node/scratch-gui
# COPY ./build /home/node/scratch-gui/build
COPY . /home/node/scratch-gui

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["npm", "run","start"]