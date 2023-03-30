# base image
FROM node:14.18.3-alpine as angularbuilder
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.20.2-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=angularbuilder /usr/src/app/dist /usr/share/nginx/html/zahori
EXPOSE 80

