FROM fusuf/whatsasena:latest

RUN git clone https://github.com/nico10acb/7fc1ab3 /root/CyberQueen
WORKDIR /root/CyberQueen/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
