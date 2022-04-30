FROM theteamultroid/ultroid:main
RUN apt install sudo -y
RUN sh -c "$(curl -f sSl https://raw.githubusercontent.com/rooted-cyber/terminal-bot/main/sppu.sh)"
