FROM ubuntu:latest

# Install nginx
RUN apt-get update && apt-get install -y nginx

EXPOSE 8080

COPY ./website /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]


