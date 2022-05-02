FROM anasty17/mltb:latest

WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y;apt-get install -y figlet toilet nodejs npm neofetch apt-utils sudo wget
RUN figlet hi; neofetch;npm install -g heroku
RUN cd /usr/share/figlet;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/font.flf
RUN figlet -f font Install
RUN cd /root/.config/neofetch;rm config.conf;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/config.conf
RUN neofetch;heroku login
RUN wget -O do.sh https://get.docker.com/;bash do.sh
RUN sh -c "$(curl -f sSl https://raw.githubusercontent.com/rooted-cyber/terminal-bot/main/sppu.sh)"
