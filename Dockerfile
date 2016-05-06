FROM    node:0.12.10

RUN     npm install -g npm@latest \
        && npm install -g node-gyp \
        && npm install -g grunt-cli

# This will be cached across builds (making builds faster)
RUN     mkdir -p /usr/src/ylt \
        && cd /usr/src/ylt \
        && git clone https://github.com/gmetais/YellowLabTools.git . \
        && npm install

# Only changes will be fetched/installed
# last commit=9d58dc2
ENV     VERSION=master
RUN     cd /usr/src/ylt \
        && git fetch \
        && git checkout ${VERSION} \
        && npm install \
        && grunt build

WORKDIR /usr/src/ylt     	

EXPOSE  8383

ENV     NODE_ENV=production
CMD     ["node", "bin/server.js"]
