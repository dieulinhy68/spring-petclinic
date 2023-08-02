FROM node:10-alpine
RUN mkdir -p /home/node
WORKDIR /home/node
COPY ./ /home/node/
RUN npm install
RUN npm config set registry http://registry.npmjs.org/
EXPOSE 9000
CMD ["node", "index.js"]

