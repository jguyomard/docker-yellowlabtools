FROM    node:0.12.10

ENV     VERSION=master
RUN     mkdir -p /usr/src/ylt \
        && cd /usr/src/ylt \
        && git clone https://github.com/gmetais/YellowLabTools.git . -b ${VERSION} \
        && git status \
        && npm install

WORKDIR /usr/src/ylt     	

EXPOSE  8383

CMD ["node", "bin/server.js"]
