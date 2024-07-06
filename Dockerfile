From node:latest
Workdir /app
Copy package.json ./
Copy . .
Run npm install
Expose 3005
CMD [ "node","app.js" ]
