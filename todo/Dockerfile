# TODO:
# Make a container based on the completed react app

# https://hub.docker.com/_/node?tab=tags&page=1&name=17.2
FROM node:17.2.0-stretch

# set working directory
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY sample/package.json ./
COPY sample/package-lock.json ./
RUN npm install --silent

# add app
COPY sample ./

# start app
CMD ["npm", "start"]