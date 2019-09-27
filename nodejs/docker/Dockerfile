FROM node:11.12.0
ENV NODE_ENV=development
COPY . /var/www
WORKDIR /var/www
RUN npm install 
ENTRYPOINT ["npm", "start"]
EXPOSE 3000