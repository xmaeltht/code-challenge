# Use Node.js v15 as the base image
FROM node:15

# Set the working directory in the container to /app
# WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies inside the Docker image
RUN npm install

# If you are building your code for production
# RUN npm ci --only=production

# Bundle the application source inside the Docker image
COPY . .

# Expose port 8080 to have it mapped by Docker daemon
EXPOSE 8080

# Define the command to run the application
CMD [ "node", "app.js" ]
