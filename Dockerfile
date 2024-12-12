# Use the official Nginx image as the base
FROM nginx:latest

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

COPY nginx.conf /etc/nginx/nginx.conf

# Copy your custom HTML file to the appropriate Nginx directory
COPY ./website.html /usr/share/nginx/html/
COPY ./website.html /var/www/html

# Expose port 80 for Nginx
EXPOSE 8080

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

