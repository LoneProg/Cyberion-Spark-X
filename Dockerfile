# Base image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the bot will run on (if needed)
EXPOSE 3000

# Environment variables (optional)
# ENV VARIABLE_NAME=value

# Run the bot
CMD ["node", "index.js"]
