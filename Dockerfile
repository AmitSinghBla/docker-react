FROM node:alpine AS build-stage

WORKDIR '/app/react'

COPY ./package.json ./

RUN npm install

COPY . .

RUN npm run build

#FROM nginx

#COPY --from=build-stage /app/react/build /usr/share/nginx/html