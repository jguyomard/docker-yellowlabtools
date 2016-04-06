FROM    node:0.12.10

# This will be cached across builds (making builds faster)
RUN     mkdir -p /usr/src/ylt \
        && cd /usr/src/ylt \
        && git clone https://github.com/gmetais/YellowLabTools.git . \
        && npm install

# Only changes will be fetched/installed
ENV     VERSION=v1.9.0
RUN     cd /usr/src/ylt \
        && git fetch \
        && git checkout ${VERSION} \
        && git status \
        && npm install

WORKDIR /usr/src/ylt     	

EXPOSE  8383

CMD ["node", "bin/server.js"]
