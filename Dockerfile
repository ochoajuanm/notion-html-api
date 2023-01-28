# Use an official Node.js runtime as the base image
FROM node:16.14.2-alpine3.15

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Start the app
CMD ["npm", "run","start"]
