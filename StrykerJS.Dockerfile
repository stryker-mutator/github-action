FROM node:14

COPY strykerjs-entrypoint.sh.sh /entrypoint.sh
RUN npm install -g stryker-cli

ENTRYPOINT ["/entrypoint.sh"]