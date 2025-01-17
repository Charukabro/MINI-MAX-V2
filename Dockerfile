FROM node:lts-buster

RUN git clone https://github.com/CYBERXKID/MINI-MAX-V2 /root/CYBERXKID

WORKDIR /root/CYBERXKID/

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN npm install -g npm@8.10.0

RUN yarn install --ignore-engines

RUN npm i -g heroku

CMD ["node", "index.js"]
