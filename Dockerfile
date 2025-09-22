# Use the official nginx image as base
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove the default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy our website files to the nginx html directory
COPY index.html .
COPY about.html .
COPY styles.css .

# Copy custom nginx configuration (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Add metadata
LABEL maintainer="Bhuvaneshwar <bhuvaneshwar20866@gmail.com>"
LABEL description="TechFlow website - Modern web solutions"
LABEL version="1.0"

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]