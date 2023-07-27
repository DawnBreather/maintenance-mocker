FROM nginx:alpine

# Copy nginx configuration
COPY .assets/nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy custom 503 error page
COPY .assets/nginx/503.html /usr/share/nginx/html/
