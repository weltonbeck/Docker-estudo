FROM node:11.12.0
WORKDIR /var/www
COPY app/package.json .
RUN npm install
COPY app .
CMD ["npm", "start"]
