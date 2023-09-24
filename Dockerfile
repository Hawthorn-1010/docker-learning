FROM node:13-alpine

ENV MONGO_DB_USERNAME=root \
    MONGO_DB_PWD=root

RUN mkdir -p /home/app

# 把host上的app文件拷贝到container中
COPY ./app /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR
# RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]

