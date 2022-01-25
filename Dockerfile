FROM node:12.13-alpine
LABEL author="Dong Xue Li"

WORKDIR /app

COPY ["package.json", "package-lock.json*","app.js","./"]

ADD bin /app/bin
ADD routes /app/routes
ADD public /app/public
ADD views /app/views
RUN npm install --silent

EXPOSE 6060

CMD ["npm", "run", "start"]
