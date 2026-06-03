const http = require('http');
const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'application/json' });
  res.end(JSON.stringify({
    status: 'ok',
    app: 'demo-node-app',
    version: process.env.APP_VERSION || 'unknown',
    environment: process.env.APP_ENV || 'unknown'
  }));
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
