FROM node:7.0

# Install renderer
RUN mkdir -p /var/www/renderer
COPY renderer/package.json /var/www/renderer
WORKDIR /var/www/renderer

RUN npm install

COPY renderer ./

## Copy courses, render them and boot
RUN mkdir -p /tmp/courses-raw && mkdir -p /tmp/courses-rendered
COPY courses/php-introduction /tmp/courses-raw/php-introduction

RUN npm run build && npm start

# Install reader
RUN mkdir -p /var/www/reader
COPY reader/package.json /var/www/reader
WORKDIR /var/www/reader

RUN npm install

COPY reader ./

EXPOSE 8093

CMD ["npm", "start"]
