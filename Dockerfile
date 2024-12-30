FROM node:alpine AS build-stage

WORKDIR '/app/react'

COPY ./package.json ./

RUN npm install

COPY . .

RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=build-stage /app/react/build /usr/share/nginx/html