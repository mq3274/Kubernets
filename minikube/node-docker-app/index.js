// index.js
const http = require('http');

const server = http.createServer((req, res) => {
  res.end('kya baat hai Mehtab docker file fr se bambambole');
});

server.listen(3000, () => {
  console.log('Server running on port 5000');
});
