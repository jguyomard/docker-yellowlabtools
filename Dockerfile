FROM    node:0.12.10

# This will be cached across builds (making builds faster)
RUN     mkdir -p /usr/src/ylt \
        && cd /usr/src/ylt \
        && git clone https://github.com/gmetais/YellowLabTools.git . \
        && npm install

RUN     npm install -g grunt-cli

# Only changes will be fetched/installed
ENV     VERSION=v1.10
RUN     cd /usr/src/ylt \
        && git fetch \
        && git checkout ${VERSION} \
        && npm install \
        && grunt build

WORKDIR /usr/src/ylt     	

EXPOSE  8383

ENV     NODE_ENV=production
CMD     ["node", "bin/server.js"]
