# Use an official Node.js runtime as a base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install Vue CLI globally
RUN npm install -g @vue/cli

# Copy the package.json and package-lock.json files (if any exist)
COPY package*.json ./

# Install project dependencies (if package.json exists)
RUN npm install || true

# Expose port 8790 (Vue dev server non-default port)
EXPOSE 8790

# Default command to start the Vue development server
CMD ["npm", "run", "serve"]
