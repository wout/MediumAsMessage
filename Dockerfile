# production environment
FROM nginx:1.23.1-alpine
RUN rm -rf /etc/nginx/conf.d
RUN mkdir -p /etc/nginx/conf.d
COPY ./default.conf /etc/nginx/conf.d/
COPY ./public /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
