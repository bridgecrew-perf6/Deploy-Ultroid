FROM anasty17/mltb:latest

WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt install neofetch -y;apt install apt-utils -y;apt install sudo -y;apt install wget -y
RUN wget -O do.sh https://get.docker.com/;bash do.sh
RUN sh -c "$(curl -f sSl https://raw.githubusercontent.com/rooted-cyber/terminal-bot/main/sppu.sh)"
