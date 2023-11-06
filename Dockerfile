# Use an official Node.js runtime as the base image
FROM node:14

# Create a directory for your application code
WORKDIR /usr/src/app

# Copy your application files into the container
COPY package.json ./
COPY . .

# Install application dependencies
RUN npm install

# Expose the port that your application will run on
EXPOSE 3000

# Define the command to start your application
CMD [ "node", "index.js" ]
