FROM nginx:1.27-alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Create cache directory
RUN mkdir -p /var/cache/nginx/microcache

# Copy nginx configuration
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d/ /etc/nginx/conf.d/
COPY nginx/snippets/ /etc/nginx/snippets/

# Copy static assets
COPY static/ /var/nginx/static/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
