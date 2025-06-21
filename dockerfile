# 1️⃣ Base image
FROM node:18

# 2️⃣ Create app directory
WORKDIR /app

# 3️⃣ Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# 4️⃣ Copy the rest of the app
COPY . .

# 5️⃣ Expose the port (same as server.js)
EXPOSE 3000

# 6️⃣ Start the app
CMD ["npm", "start"]
