FROM node:22

COPY strykerjs-entrypoint.sh.sh /entrypoint.sh
RUN npm install -g stryker-cli

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]