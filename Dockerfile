FROM nginx:alpine

EXPOSE 80

COPY website.html /usr/share/nginx/html
COPY website.html /var/www/html

CMD ["nginx", "-g", "daemon off;"]


