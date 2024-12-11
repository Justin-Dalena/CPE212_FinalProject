FROM ubuntu:latest

EXPOSE 8080

COPY ./Website /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
