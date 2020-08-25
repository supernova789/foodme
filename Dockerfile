# Stage 0, "build-stage", based on Node.js, to build and compile the frontend
FROM node:10.16.3 as build-stage
WORKDIR /app
COPY . .
RUN npm install
#ARG configuration=production
#RUN npm run build -- --output-path=./dist/angular-app --configuration $configuration

# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:1.15
FROM ubuntu:16.04
#Copy ci-dashboard-dist
COPY --from=build-stage /app/ /usr/share/nginx/html
#Copy default nginx configuration
COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf
RUN chmod +x /usr/share/nginx/html/scripts/web-server.sh