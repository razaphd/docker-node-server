FROM node:4.4
EXPOSE 6000
COPY server.js .
CMD node server.js
The server.js is as follows.
var http = require('http');
var handleRequest = function (request, response) {
  response.writeHead(200);
  response.end('Hello World!');
};
var www = http.createServer(handleRequest);
www.listen(6000);
