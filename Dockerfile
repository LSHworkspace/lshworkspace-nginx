FROM nginx:1.27-alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy nginx configuration
COPY nginx/ /etc/nginx/

# Copy static assets
COPY static/ /var/nginx/static/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
