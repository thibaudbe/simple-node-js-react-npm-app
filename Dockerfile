FROM node:alpine

WORKDIR app/

COPY package.json .
# RUN rm /etc/nginx/conf.d/test.conf
COPY ./scripts/nginx/test.conf /etc/nginx/conf.d/
# COPY ./scripts/nginx/ /etc/nginx/vhost.d/
RUN npm install --quiet

COPY . .

EXPOSE 3000

CMD ["npm", "start"]